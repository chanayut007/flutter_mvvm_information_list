import 'package:flutter/material.dart';
import 'package:flutter_information_list_mvvm_app/model/user_list.dart';
import 'package:flutter_information_list_mvvm_app/utils/utils.dart';
import 'package:flutter_information_list_mvvm_app/view_model/user_list_view_model.dart';
import 'package:provider/provider.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<UserListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List MVVM"),
      ),
      body: _ui(viewModel),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.getUsers(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
  
  Widget _ui(UserListViewModel viewModel) {
    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator(),);
    } else if (viewModel.errorMessage.isNotEmpty) {
      return Center(
        child: Text(
          viewModel.errorMessage
        ),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final user = viewModel.users[index];
        return _buildUserItems(user);
      },
      separatorBuilder: (context, index) => const Divider(height: 2,),
      itemCount: viewModel.users.length
    );
  }

  Widget _buildUserItems(Result result) {
    return SizedBox(
      child: Row(
        children: [
          Builder(
              builder: (context) {
                if (result.picture != null) {
                  final picture = result.picture!;
                  if (picture.large != null || picture.medium != null || picture.thumbnail != null) {
                    String? imagePath;
                    if (picture.large != null) {
                      imagePath = picture.large;
                    } else if (picture.medium != null) {
                      imagePath = picture.medium;
                    } else if (picture.thumbnail != null) {
                      imagePath = picture.thumbnail;
                    } else {
                      imagePath = "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg";
                    }
                    return SizedBox(
                      width: 100,
                      height: 100,
                      child: FittedBox(
                        child: Image.network(
                            imagePath!
                        ),
                      ),
                    );
                  }
                }
                return const SizedBox();
              }
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildContent("ชื่อ", "${result.name?.first} ${result.name?.last}"),
                _buildContent("เพศ", Utils.getGender(gender: result.gender)),
                _buildContent("อีเมล", result.email),
                _buildContent("อายุ", "${result.dob?.age.toString()}"),
                _buildContent("เบอร์โทรศัพท์", result.phone)
              ],
            ),
          ),
        ],
      )
    );
  }
  
  Widget _buildContent(String title, String? description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(width: 4,),
          Flexible(
            child: Text(description ?? "-"),
          )
        ],
      ),
    );
  }
}

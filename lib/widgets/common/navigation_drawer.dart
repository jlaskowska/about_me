import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/models/navigation_item_data_model.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth * 0.66;
        return Container(
          width: width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 16),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _NavigationDrawerHeader(),
              Expanded(
                child: ListView.builder(
                  itemCount: navBarItems.length,
                  itemBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.only(
                      left: 32.0,
                      top: 30.0,
                    ),
                    child: ListTile(
                      title: Text(
                        navBarItems[index].title,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onTap: () => Navigator.of(context).pushNamed(navBarItems[index].routeName),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavigationDrawerHeader extends StatelessWidget {
  const _NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.black,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: Container(
          height: 150,
          color: ProjectColors.black,
          alignment: Alignment.center,
          width: double.infinity,
          child: Image.asset('assets/images/drawer/dash.png'),
        ),
      ),
    );
  }
}

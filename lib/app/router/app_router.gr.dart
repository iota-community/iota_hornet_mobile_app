// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../features/node_overview/node_overview.dart' as _i5;
import '../../features/node_overview/pages/edit_node/edit_node.dart' as _i4;
import '../../features/node_wrapper/pages/explorer/explorer.dart' as _i7;
import '../../features/node_wrapper/pages/explorer/pages/message/message_page.dart'
    as _i8;
import '../../features/node_wrapper/pages/home/home.dart' as _i6;
import '../../features/node_wrapper/pages/peers/pages/detail_peer/view/detail_peer_page.dart'
    as _i11;
import '../../features/node_wrapper/pages/peers/pages/edit_peer/edit_peer.dart'
    as _i10;
import '../../features/node_wrapper/pages/peers/peers.dart' as _i9;
import '../app_wrapper_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AppWrapperPage();
        }),
    EditNodeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<EditNodeRouteArgs>(
              orElse: () => EditNodeRouteArgs(id: pathParams.optInt('id')));
          return _i4.EditNodePage(key: args.key, id: args.id);
        }),
    AddNodeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<AddNodeRouteArgs>(
              orElse: () => AddNodeRouteArgs(id: pathParams.optInt('id')));
          return _i4.EditNodePage(key: args.key, id: args.id);
        }),
    NodeOverviewRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.NodeOverviewPage();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    ExplorerRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    PeersRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.HomePage();
        }),
    ExplorerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.ExplorerPage();
        }),
    MessageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<MessageRouteArgs>(
              orElse: () => MessageRouteArgs(
                  messageId: pathParams.getString('messageId')));
          return _i8.MessagePage(key: args.key, messageId: args.messageId);
        }),
    PeersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.PeersPage();
        }),
    EditPeerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<EditPeerRouteArgs>(
              orElse: () => EditPeerRouteArgs(id: pathParams.getString('id')));
          return _i10.EditPeerPage(key: args.key, id: args.id);
        }),
    PeerDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<PeerDetailRouteArgs>(
              orElse: () =>
                  PeerDetailRouteArgs(peerId: pathParams.getString('peerId')));
          return _i11.PeerDetailPage(key: args.key, peerId: args.peerId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppWrapperRoute.name, path: '/', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(ExplorerRouter.name, path: 'explorer', children: [
            _i1.RouteConfig(ExplorerRoute.name, path: ''),
            _i1.RouteConfig(MessageRoute.name, path: 'milestone/:messageId'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig(PeersRouter.name, path: 'peers', children: [
            _i1.RouteConfig(PeersRoute.name, path: ''),
            _i1.RouteConfig(EditPeerRoute.name, path: 'edit/:peerId'),
            _i1.RouteConfig(PeerDetailRoute.name, path: 'detail/:peerId'),
            _i1.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '/', fullMatch: true)
        ]),
        _i1.RouteConfig(EditNodeRoute.name, path: '/edit/:uuid'),
        _i1.RouteConfig(AddNodeRoute.name, path: '/add'),
        _i1.RouteConfig(NodeOverviewRoute.name, path: '/list'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class AppWrapperRoute extends _i1.PageRouteInfo {
  const AppWrapperRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AppWrapperRoute';
}

class EditNodeRoute extends _i1.PageRouteInfo<EditNodeRouteArgs> {
  EditNodeRoute({_i2.Key? key, int? id})
      : super(name,
            path: '/edit/:uuid',
            args: EditNodeRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'EditNodeRoute';
}

class EditNodeRouteArgs {
  const EditNodeRouteArgs({this.key, this.id});

  final _i2.Key? key;

  final int? id;
}

class AddNodeRoute extends _i1.PageRouteInfo<AddNodeRouteArgs> {
  AddNodeRoute({_i2.Key? key, int? id})
      : super(name, path: '/add', args: AddNodeRouteArgs(key: key, id: id));

  static const String name = 'AddNodeRoute';
}

class AddNodeRouteArgs {
  const AddNodeRouteArgs({this.key, this.id});

  final _i2.Key? key;

  final int? id;
}

class NodeOverviewRoute extends _i1.PageRouteInfo {
  const NodeOverviewRoute() : super(name, path: '/list');

  static const String name = 'NodeOverviewRoute';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

class ExplorerRouter extends _i1.PageRouteInfo {
  const ExplorerRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'explorer', initialChildren: children);

  static const String name = 'ExplorerRouter';
}

class PeersRouter extends _i1.PageRouteInfo {
  const PeersRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'peers', initialChildren: children);

  static const String name = 'PeersRouter';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class ExplorerRoute extends _i1.PageRouteInfo {
  const ExplorerRoute() : super(name, path: '');

  static const String name = 'ExplorerRoute';
}

class MessageRoute extends _i1.PageRouteInfo<MessageRouteArgs> {
  MessageRoute({_i2.Key? key, required String messageId})
      : super(name,
            path: 'milestone/:messageId',
            args: MessageRouteArgs(key: key, messageId: messageId),
            rawPathParams: {'messageId': messageId});

  static const String name = 'MessageRoute';
}

class MessageRouteArgs {
  const MessageRouteArgs({this.key, required this.messageId});

  final _i2.Key? key;

  final String messageId;
}

class PeersRoute extends _i1.PageRouteInfo {
  const PeersRoute() : super(name, path: '');

  static const String name = 'PeersRoute';
}

class EditPeerRoute extends _i1.PageRouteInfo<EditPeerRouteArgs> {
  EditPeerRoute({_i2.Key? key, required String id})
      : super(name,
            path: 'edit/:peerId',
            args: EditPeerRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'EditPeerRoute';
}

class EditPeerRouteArgs {
  const EditPeerRouteArgs({this.key, required this.id});

  final _i2.Key? key;

  final String id;
}

class PeerDetailRoute extends _i1.PageRouteInfo<PeerDetailRouteArgs> {
  PeerDetailRoute({_i2.Key? key, required String peerId})
      : super(name,
            path: 'detail/:peerId',
            args: PeerDetailRouteArgs(key: key, peerId: peerId),
            rawPathParams: {'peerId': peerId});

  static const String name = 'PeerDetailRoute';
}

class PeerDetailRouteArgs {
  const PeerDetailRouteArgs({this.key, required this.peerId});

  final _i2.Key? key;

  final String peerId;
}

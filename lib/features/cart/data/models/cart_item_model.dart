import 'package:blocks/features/sign_up/domain/entities/client_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_model.g.dart';

@JsonSerializable()
class ClientModel extends ClientEntity {
  const ClientModel({
    required int id,
    required String denomination,
    required String type,
    String? address,
    String? city,
    String? country,
    String? phoneNumber,
    String? email,
    String? fax,
    String? website,
    String? notes,
  }) : super(
          id: id,
          denomination: denomination,
          type: type,
          address: address,
          city: city,
          country: country,
          phoneNumber: phoneNumber,
          email: email,
          fax: fax,
          website: website,
          notes: notes,
        );

  factory ClientModel.fromJson(Map<String, dynamic> json) =>
      _$ClientModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClientModelToJson(this);

  factory ClientModel.fromEntity(ClientEntity entity) {
    return ClientModel(
      id: entity.id!,
      denomination: entity.denomination,
      type: entity.type,
      address: entity.address,
      city: entity.city,
      country: entity.country,
      phoneNumber: entity.phoneNumber,
      email: entity.email,
      fax: entity.fax,
      website: entity.website,
      notes: entity.notes,
    );
  }
}

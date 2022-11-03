class PhotoModel {
  String? sID;
  String? cctStatus;
  String? sName;
  String? sImageLink;
  String? cctAuthorId;
  String? cctCreated;
  String? cctModified;
  String? cctSlug;

  PhotoModel(
      {this.sID,
      this.cctStatus,
      this.sName,
      this.sImageLink,
      this.cctAuthorId,
      this.cctCreated,
      this.cctModified,
      this.cctSlug});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    sID = json['_ID'];
    cctStatus = json['cct_status'];
    sName = json['_name'];
    sImageLink = json['_image_link'];
    cctAuthorId = json['cct_author_id'];
    cctCreated = json['cct_created'];
    cctModified = json['cct_modified'];
    cctSlug = json['cct_slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_ID'] = this.sID;
    data['cct_status'] = this.cctStatus;
    data['_name'] = this.sName;
    data['_image_link'] = this.sImageLink;
    data['cct_author_id'] = this.cctAuthorId;
    data['cct_created'] = this.cctCreated;
    data['cct_modified'] = this.cctModified;
    data['cct_slug'] = this.cctSlug;
    return data;
  }
}


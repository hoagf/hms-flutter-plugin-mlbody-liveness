/*
    Copyright 2021-2022. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License")
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

part of huawei_ml_image;

class MlProductVisualSearch {
  final List<MLVisionSearchProduct>? productList;
  final MLImageBorder? border;
  final String? type;

  const MlProductVisualSearch._({
    this.border,
    this.type,
    this.productList,
  });

  factory MlProductVisualSearch.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return const MlProductVisualSearch._();
    }
    final List<MLVisionSearchProduct> products = <MLVisionSearchProduct>[];
    if (map['productList'] != null) {
      map['productList'].forEach((dynamic v) {
        products.add(MLVisionSearchProduct.fromMap(v));
      });
    }
    return MlProductVisualSearch._(
      border:
          map['border'] != null ? MLImageBorder.fromMap(map['border']) : null,
      type: map['type'],
      productList: products,
    );
  }
}

class MLVisionSearchProduct {
  final List<MLVisionSearchProductImage>? imageList;
  final String? customContent;
  final String? productId;
  final String? productUrl;

  const MLVisionSearchProduct._({
    this.productId,
    this.productUrl,
    this.customContent,
    this.imageList,
  });

  factory MLVisionSearchProduct.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return const MLVisionSearchProduct._();
    }
    final List<MLVisionSearchProductImage> images =
        <MLVisionSearchProductImage>[];
    if (map['imageList'] != null) {
      map['imageList'].forEach((dynamic v) {
        images.add(MLVisionSearchProductImage.fromMap(v));
      });
    }
    return MLVisionSearchProduct._(
      customContent: map['customContent'],
      productId: map['productId'],
      productUrl: map['productUrl'],
      imageList: images,
    );
  }
}

class MLVisionSearchProductImage {
  final double? possibility;
  final String? imageId;
  final String? productId;

  const MLVisionSearchProductImage._({
    this.possibility,
    this.imageId,
    this.productId,
  });

  factory MLVisionSearchProductImage.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) {
      return const MLVisionSearchProductImage._();
    }
    return MLVisionSearchProductImage._(
      possibility: map['possibility'],
      imageId: map['imageId'],
      productId: map['productId'],
    );
  }
}

class MLProductCaptureResult {
  final String? imageUrl;
  final String? id;
  final String? other;

  const MLProductCaptureResult._({
    this.id,
    this.imageUrl,
    this.other,
  });

  factory MLProductCaptureResult.fromJson(Map<dynamic, dynamic>? json) {
    if (json == null) {
      return const MLProductCaptureResult._();
    }
    return MLProductCaptureResult._(
      imageUrl: json['imgUrl'],
      id: json['id'],
      other: json['other'],
    );
  }
}

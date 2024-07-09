// key-value
export type KV = {
  key: string;
  value: string,
  image?: string
};

// 规格
export type Specification = {
  id: string;
  title: string;
  data: KV[];
}

// 商品
export class Commodity {
  // 商品id
  id: string = '';
  // 商品名称
  title: string = '';
  // 商品推广
  promotion?: string = '';
  // 商品描述
  description?: string = '';
  // 商品图片
  images: string[] = [];
  // 商品详情
  detail?: string[] = [];
  // 商品价格
  price: number = 0;
  // 商品规格
  specifications?: Specification[] = [];

  constructor(commodity?: Commodity) {
    if (!commodity) {
      return;
    }
    this.id = commodity.id;
    this.title = commodity.title;
    this.promotion = commodity.promotion;
    this.description = commodity.description;
    this.images = commodity.images;
    this.detail = commodity.detail;
    this.price = commodity.price;
    this.specifications = commodity.specifications;
  }
}

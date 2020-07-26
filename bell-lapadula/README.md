

by **[Erik Horus](https://github.com/ErikHorus1249)**

date : 03/05/2020

# The Alloy Analyzer![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/AddressBook1_ShowFor4But1.jpg/500px-AddressBook1_ShowFor4But1.jpg)


### I. Giới thiệu về  Bell la padula
**Mô hình Bell-La Padula**  (viết tắt là BLP) là một mô hình máy được sử dụng để thực thi kiểm soát truy cập vào các ứng dụng của chính phủ và quân sự. Nó được phát triển bởi  [David Elliott Bell](https://vi.wikipedia.org/w/index.php?title=David_Elliott_Bell&action=edit&redlink=1 "David Elliott Bell (trang chưa được viết)")  và  [Leonard J. LaPadula](https://vi.wikipedia.org/w/index.php?title=Leonard_J._LaPadula&action=edit&redlink=1 "Leonard J. LaPadula (trang chưa được viết)"), tiếp theo để hướng dẫn mạnh mẽ từ Roger R. Schell để chính thức hóa an ninh đa cấp (MLS) chính sách của Bộ quốc phòng Mỹ (DoD).[ mô hình này là một mô hình nhà nước chuyển đổi chính thức chính sách bảo mật máy tính mô tả một tập hợp các quy tắc kiểm soát truy cập mà sử dụng các nhãn an ninh vào đối tượng và thanh thải cho các đối tượng. Nhãn an ninh từ nhạy cảm nhất (ví dụ như "Top Secret"), xuống đến ít nhạy cảm nhất (ví dụ, "Không phân loại" hay "công cộng").

Các mô hình **Bell-LaPadula** là một ví dụ về một mô hình mà không có sự phân biệt rõ ràng về bảo vệ và an ninh.
### II. Giới thiệu về  alloy 4.2

Công cụ phân tích Alloy  được phát triển bởi nhóm thiết kế phần mềm thuộc **[MIT](http://sdg.csail.mit.edu/)** sử dụng nhằm mục đích phân tích mô hình dựa trên Alloy language.

**Alloy** là một ngôn ngữ mô hình cấu trúc đơn giản dựa trên **[First-order logic](https://en.wikipedia.org/wiki/First-order_logic)** hay được dịch ra tiếng Việt là  **ngôn ngữ lô-gíc mô tả bậc nhất**. 
- Alloy hỗ trợ mô tả:
◦ Các cấu trúc cơ sở (dạng đồ họa hay các
khai báo dạng văn bản)
◦ Các ràng buộc phức tạp
◦ Các thao tác diễn tả sự thay đổi cấu trúc
động



Công cụ có thể tạo ra các trường hợp bất biến, mô phỏng việc thực hiện các hoạt động (ngay cả những hoạt động được xác định ngầm) và kiểm tra các thuộc tính do người dùng chỉ định của một mô hình. Hợp kim và của nó
    máy phân tích đã được sử dụng chủ yếu để khám phá phần mềm trừu tượng
    kiểu dáng. Việc sử dụng nó trong phân tích mã cho phù hợp với một
    đặc điểm kỹ thuật và như một trình tạo trường hợp thử nghiệm tự động đang được
    điều tra trong các dự án nghiên cứu đang diễn ra.
  
### III. Kiểm thử mô hình   Bell la padula sử dụng alloy

#### 1. Trường hợp tuân thủ

![](https://i.imgur.com/PLBeo0x.png)

![](https://i.imgur.com/qXvjXt3.png)


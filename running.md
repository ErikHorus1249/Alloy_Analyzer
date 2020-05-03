
by **[Erik Horus](https://github.com/ErikHorus1249)**

date : 03/05/2020

# The Alloy Analyzer

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/AddressBook1_ShowFor4But1.jpg/500px-AddressBook1_ShowFor4But1.jpg)

### I. Cách chạy Alloy 4 . 2
1. Tải về file Alloy4.2.jar [**tại đây**](./alloy4_2) 

2. Bạn phải cài sẵn Java trên máy thì mới có thể chạy Alloy 4.2
Khuyến cáo là bạn chỉ nên sử dụng JRE cung cấp từ Sun, IBM ... Hoàn toàn miễn phí hoặc có sẵn trên máy của bạn. Alloy phiên bản hiện tại không hoạt động với GCJ ( GNU Compiler for Java ) trình  biên dịch GNU cho Java vì nó hạn chế thư viện hỗ trợ.
         
 3.  Chạy trên hệ điều hành Mac OS X
Nếu bạn sử dụng Macbook thì chỉ cần double-click vào file **dmg** để chạy thôi. Sau đó kéo Alloy vào thư mục ứng dụng của bạn.

 4.  Nếu bạn chạy Alloy trên nên tảng khác như Windows hay Linux  chẳng hạn thì : 

        Chỉ cần double-click vào file Jar hoặc sử dụng lệnh dưới đây và nhớ hãy cài đặt Java trước khi chạy. Ở đây tôi sẽ chạy Alloy trên **Ubuntu 20.04 LTS** và sử sụng **Java 8** : 
        > 
        `$ sudo apt update` 
        >
        `$ sudo apt install openjdk-8-jdk openjdk-8-jre`
        >
        `$  java -jar alloy4.2.jar`


         
![](https://i.imgur.com/MKU3tgt.png)![](https://i.imgur.com/hoVGR9E.png)
### Lỗi : 
![](https://i.imgur.com/szgbuF5.png)
 ```
  Exception in thread "main" java.awt.AWTError: Assistive Technology not found: org.GNOME.Accessibility.AtkWrapper
	at java.awt.Toolkit.loadAssistiveTechnologies(Toolkit.java:807)
	at java.awt.Toolkit.getDefaultToolkit(Toolkit.java:886)
	at edu.mit.csail.sdg.alloy4.OurUtil.loadIcon(OurUtil.java:150)
	at edu.mit.csail.sdg.alloy4whole.SimpleGUI.<clinit>(SimpleGUI.java:318)
```
- Nếu bạn gặp lỗi sau thì  hãy sửa thông tin `/etc/java-8-openjdk/accessibility.properties` 

>
    $ sudo nano  /etc/java-8-openjdk/accessibility.propertie
    
- Hãy comment dòng sau lại bằng cách thêm dấu **#** vào đầu dòng

``` #assistive_technologies=org.GNOME.Accessibility.AtkWrapper``` 

- Lưu file lại `Ctrl + X chọn Y - Yes` 

![](https://i.imgur.com/KwPfGxl.png)

### Alloy Khi được khởi động 

![](https://i.imgur.com/FkpebLv.png)
- Trên đây là toàn bộ cách giúp bạn chạy Alloy một cách dễ dàng nhất mà mình chú trọng phần chạy Alloy trên Ubuntu thôi lý do đơn giản vì mình đang dùng Ubuntu mà :> Chúc các bạn thực hành hiệu quả.

### Nguồn tham khảo  :
- **[README.txt của Alloy 4.2](h)**
- **[Alloy tutorial MIT](https://alloytools.org/tutorials/online/)** 
- **[Github](https://github.com/microsoft/vscode-arduino/issues/644)**  
	





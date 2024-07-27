
# BudgetManagerBackend

## Install php, composer, mySQL with the following versions

|         | version           | 
| ------------- |:-------------:|
| PHP      | 8.0.30 |
| Composer    |  2.7.6    |  
| MySQL | 8.0      | 

### PHP and Composer versions:
<image src="./resources/images/PHP_Composer_Version.png" alt="PHP-composer-version">

### MySQL (mariaDB) version:

<image src="./resources/images/MySQL_Version.png" alt="PHP-composer-version">

> MariaDB and MySQL are closely related because MariaDB was created from the MySQL codebase.

Here are some key points about the relationship between MariaDB and MySQL:

- Common Origin: MariaDB was created by the original developers of MySQL, including Monty Widenius, one of the founders of MySQL. MariaDB started from the MySQL codebase and has been developed as an independent project.
> Nguồn gốc chung: MariaDB được tạo ra bởi những người phát triển ban đầu của MySQL, bao gồm Monty Widenius, một trong những người sáng lập MySQL. MariaDB bắt đầu từ mã nguồn của MySQL và được phát triển thành một dự án độc lập.

- Fork: MariaDB is a fork of MySQL. This means that MariaDB was initially developed from the same source code as MySQL but has since been developed with its own features and improvements.
> Phân nhánh (Fork): MariaDB là một phân nhánh (fork) của MySQL. Điều này có nghĩa là MariaDB ban đầu được phát triển từ cùng một mã nguồn như MySQL, nhưng sau đó nó đã được phát triển thêm các tính năng và cải tiến riêng biệt.

- Compatibility: MariaDB is often considered highly compatible with MySQL, especially in the early versions. This means that most applications and tools that use MySQL can work with MariaDB with minimal changes.
> Tính tương thích: MariaDB thường được coi là tương thích với MySQL ở mức độ cao, đặc biệt là ở các phiên bản đầu. Điều này có nghĩa là hầu hết các ứng dụng và công cụ sử dụng MySQL có thể hoạt động với MariaDB mà không cần thay đổi nhiều.

-  Development and Management: MySQL is managed and developed by Oracle Corporation after Oracle acquired Sun Microsystems, the company that owned MySQL, in 2010. MariaDB is managed and developed by the MariaDB Foundation, a non-profit organization that ensures the open and free development of MariaDB.
> Phát triển và quản lý: MySQL được Oracle Corporation quản lý và phát triển sau khi Oracle mua lại Sun Microsystems, công ty sở hữu MySQL vào năm 2010. MariaDB thì được quản lý và phát triển bởi MariaDB Foundation, một tổ chức phi lợi nhuận nhằm đảm bảo sự phát triển mở và tự do của MariaDB.

- Features and Performance: MariaDB has introduced many new features and performance improvements not found in MySQL. For example, MariaDB includes additional storage engines, scalability improvements, and new SQL functions.
> Tính năng và hiệu năng: MariaDB đã giới thiệu nhiều tính năng mới và cải tiến hiệu năng mà không có trong MySQL. Ví dụ, MariaDB có các công cụ lưu trữ bổ sung, cải tiến về khả năng mở rộng và các chức năng mới về SQL.

- Community and Support: Both database management systems have large communities of users and developers. However, the MariaDB community is often seen as emphasizing open development and community involvement more strongly.
> Cộng đồng và hỗ trợ: Cả hai hệ quản trị cơ sở dữ liệu đều có cộng đồng người dùng và nhà phát triển rộng lớn. Tuy nhiên, cộng đồng MariaDB thường được xem là nhấn mạnh hơn về sự phát triển mở và sự tham gia của cộng đồng.

## Framework Laravel
Laravel is a free, open-source PHP framework designed for web application development following the MVC (Model-View-Controller) architectural pattern. Created by Taylor Otwell, Laravel was first released in 2011 and has quickly gained popularity due to its robust features and high scalability, making web development easier and more efficient.
> Laravel là một framework PHP mã nguồn mở và miễn phí, được thiết kế để phát triển các ứng dụng web theo mô hình MVC (Model-View-Controller). Laravel được tạo ra bởi Taylor Otwell và lần đầu tiên ra mắt vào năm 2011. Framework này đã nhanh chóng trở nên phổ biến nhờ các tính năng mạnh mẽ và khả năng mở rộng cao, làm cho việc phát triển web trở nên dễ dàng và hiệu quả hơn.

### Key Features of Laravel (Các Tính Năng Chính của Laravel)

#### Eloquent ORM (Object-Relational Mapping)

- Eloquent is Laravel's built-in ORM, providing an easy and intuitive way to interact with the database.
> Eloquent là ORM tích hợp của Laravel, cung cấp một cách dễ dàng và trực quan để tương tác với cơ sở dữ liệu.

- Allows defining models and managing relationships between database tables effortlessly.
> Cho phép định nghĩa các model, xử lý các mối quan hệ giữa các bảng trong cơ sở dữ liệu một cách dễ dàng.

#### Routing

- Laravel offers a powerful routing system that enables you to define complex routes easily.
> Laravel cung cấp hệ thống routing mạnh mẽ cho phép bạn dễ dàng định nghĩa các route phức tạp.

- Supports both HTTP method-based routing (GET, POST, PUT, DELETE) and RESTful routing.
> Hỗ trợ cả route dựa trên phương thức HTTP (GET, POST, PUT, DELETE) và RESTful routing.

#### Blade Templating Engine

- Blade is Laravel's templating system, which uses a simple and efficient syntax for building user interfaces.
> Blade là hệ thống templating của Laravel, cho phép bạn sử dụng cú pháp đơn giản và hiệu quả để xây dựng các giao diện người dùng.

- Supports features like layout inheritance and component-based views.
> Hỗ trợ các phần mở rộng và các tính năng như layout inheritance và component-based views.

#### Artisan CLI

- Artisan is Laravel's command-line interface, providing numerous helpful commands for application development.
> Artisan là giao diện dòng lệnh của Laravel, cung cấp nhiều lệnh hữu ích cho việc phát triển ứng dụng.

- Allows you to quickly create controllers, models, migrations, and perform many other tasks.
> Giúp bạn tạo controller, model, migration, và thực hiện nhiều tác vụ khác một cách nhanh chóng.

#### Middleware

- Middleware acts as an intermediary layer to process HTTP requests, making it easy to manage and secure routes within your application.
> Middleware là một lớp trung gian để xử lý các yêu cầu HTTP, giúp bạn dễ dàng quản lý và bảo vệ các route trong ứng dụng.

- upports authentication, authorization, and other functions.
> Hỗ trợ việc xác thực, ủy quyền và các chức năng khác.

#### Migration and Schema Builder

- Laravel provides migration and schema builder tools to manage and modify the database schema.
> Laravel cung cấp công cụ migration và schema builder để quản lý và thay đổi cấu trúc cơ sở dữ liệu.

- Helps you easily share and deploy database changes across different environments.
> Giúp bạn dễ dàng chia sẻ và triển khai các thay đổi cơ sở dữ liệu qua các môi trường khác nhau.

#### Task Scheduling

- Supports scheduling recurring tasks, allowing you to define cron jobs without editing the crontab file directly on the server.
> Hỗ trợ lập lịch các tác vụ định kỳ, giúp bạn dễ dàng định nghĩa các tác vụ cron mà không cần chỉnh sửa trực tiếp file crontab trên server.

#### Queues

- Supports a queue system for handling background tasks, improving application performance and response time.
> Hỗ trợ hệ thống queue để xử lý các tác vụ nền (background tasks), giúp cải thiện hiệu suất và thời gian phản hồi của ứng dụng.

#### Security

- Laravel integrates multiple security measures, including protection against CSRF, XSS, and SQL injection, ensuring your application is secure.
> Laravel tích hợp nhiều biện pháp bảo mật, bao gồm bảo vệ CSRF, XSS, và SQL injection, giúp ứng dụng của bạn an toàn hơn.

### Install Laravel

#### System Require (Yêu cầu hệ thống)

- PHP >= 7.3
- Composer

#### Install Composer (Cài đặt Composer)

If you haven’t installed Composer yet, download and install it from [Composer's official website](https://getcomposer.org/).
> Nếu bạn chưa cài đặt Composer, bạn có thể tải và cài đặt từ [trang chủ của Composer](https://getcomposer.org/).

#### Install Laravel (Cài đặt Laravel)

Use Composer to install Laravel globally.
> Sử dụng Composer để cài đặt Laravel.

```
composer global require laravel/installer
```

####  Create a new Laravel project (Tạo một dự án Laravel mới)

```
laravel new project-name
```

Or if you prefer to use Composer directly in the current directory:
> Hoặc nếu bạn muốn sử dụng Composer để cài đặt Laravel trong thư mục hiện tại:

```
composer create-project --prefer-dist laravel/laravel project-name
```

### Basic Setup (Thiết lập cơ bản)

Navigate to the project directory:
> Chuyển vào thư mục dự án:

```
cd project-name
```

Start the development server:
> Chạy máy chủ phát triển:

```
  php artisan serve
```

The development server will run at http://localhost:8000.
> Máy chủ phát triển sẽ chạy ở http://localhost:8000.

### Create API Structure (Tạo cấu trúc API)

#### Create a controller (Tạo một Controller):

Laravel provides an Artisan command to create a controller:
> Laravel cung cấp lệnh Artisan để tạo controller:

```
php artisan make:controller API/ExampleController
```

This will create a controller at 
> Điều này sẽ tạo ra một controller tại

`app/Http/Controllers/API/ExampleController.php`

#### Define API routes (Tạo route cho API):

Open the `routes/api.php` file and add routes for your API:
> Mở tệp `routes/api.php` và thêm các route cho API:

```
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ExampleController;

Route::get('/example', [ExampleController::class, 'index']);
Route::post('/example', [ExampleController::class, 'store']);
Route::get('/example/{id}', [ExampleController::class, 'show']);
Route::put('/example/{id}', [ExampleController::class, 'update']);
Route::delete('/example/{id}', [ExampleController::class, 'destroy']);
```

#### Implement controller methods (Triển khai controller methods): 

Open `app/Http/Controllers/API/ExampleController.php` and implement the methods:
> Mở `app/Http/Controllers/API/ExampleController.php` và triển khai các phương thức tương ứng:

```
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function index()
    {
        return response()->json(['message' => 'This is the index method']);
    }

    public function store(Request $request)
    {
        return response()->json(['message' => 'This is the store method']);
    }

    public function show($id)
    {
        return response()->json(['message' => "This is the show method for ID: {$id}"]);
    }

    public function update(Request $request, $id)
    {
        return response()->json(['message' => "This is the update method for ID: {$id}"]);
    }

    public function destroy($id)
    {
        return response()->json(['message' => "This is the destroy method for ID: {$id}"]);
    }
}
```

### Using Eloquent ORM (Sử dụng Eloquent ORM)

To work with the database, you can use Eloquent ORM. First, configure your database settings in the `.env` file.
> Để làm việc với cơ sở dữ liệu, bạn có thể sử dụng Eloquent ORM. Đầu tiên, thiết lập cấu hình cơ sở dữ liệu trong tệp `.env`.


```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

#### Create a model and migration (Tạo model và migration)
```
php artisan make:model Example -m
```
This command creates a model `Example` and a migration file.
> Điều này sẽ tạo model `Example` và migration tương ứng.

#### Define the table structure in the migration file (Định nghĩa cấu trúc bảng trong migration)

Open the migration file in `database/migrations/` and define the columns of the table.
> Mở tệp migration trong `database/migrations/` và định nghĩa các cột của bảng.

```
public function up()
{
    Schema::create('examples', function (Blueprint $table) {
        $table->id();
        $table->string('name');
        $table->text('description')->nullable();
        $table->timestamps();
    });
}
```

#### Run the migration (Chạy migration)

```
php artisan migrate
```

Or run one migration
```
php artisan migrate --path=/database/migrations/2024_07_11_023457_create_transaction_types_table.php
```

#### Use Eloquent in the controller (Sử dụng Eloquent trong controller)

```
namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Example;

class ExampleController extends Controller
{
    public function index()
    {
        $examples = Example::all();
        return response()->json($examples);
    }

    public function store(Request $request)
    {
        $example = Example::create($request->all());
        return response()->json($example, 201);
    }

    public function show($id)
    {
        $example = Example::findOrFail($id);
        return response()->json($example);
    }

    public function update(Request $request, $id)
    {
        $example = Example::findOrFail($id);
        $example->update($request->all());
        return response()->json($example);
    }

    public function destroy($id)
    {
        Example::findOrFail($id)->delete();
        return response()->json(null, 204);
    }
}
```


### Test the API (Kiểm tra API)

You can use Postman or any other tool to test the API endpoints you created.
With these steps, you have successfully created a basic API using Laravel. You can expand and customize it according to your project’s requirements. Laravel also provides many powerful features such as middleware, events, queues, and authentication to support building more complex applications.
> Bạn có thể sử dụng Postman hoặc bất kỳ công cụ nào để kiểm tra các endpoint API mà bạn đã tạo. Với các bước trên, bạn đã tạo thành công một API cơ bản bằng Laravel. Bạn có thể mở rộng và tùy chỉnh theo yêu cầu của dự án. Laravel còn cung cấp nhiều tính năng mạnh mẽ khác như middleware, event, queue, và authentication để hỗ trợ xây dựng các ứng dụng phức tạp hơn.



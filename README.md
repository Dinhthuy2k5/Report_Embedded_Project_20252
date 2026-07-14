# Báo cáo FlappyBird STM32F429ZI

Nguồn LaTeX của báo cáo bài tập lớn Hệ nhúng cho project FlappyBird trên STM32F429ZI.

## Chỉnh thông tin nhóm

Sửa các trường trong `project-info.tex`, đặc biệt là tên nhóm, MSSV và tên thành viên 2/3.

## Biên dịch

Yêu cầu MiKTeX có XeLaTeX. Chạy:

```powershell
.\build.ps1
```

Script chạy XeLaTeX ba lần để cập nhật mục lục, danh mục hình và tham chiếu chéo. File kết quả là `main.pdf`.

## Cấu trúc

- `main.tex`: định dạng chung và trang bìa.
- `project-info.tex`: thông tin nhóm có thể chỉnh nhanh.
- `chapters/`: nội dung các chương.
- `figures/generated/`: hình kỹ thuật do nhóm dựng hoặc xuất từ công cụ.
- `figures/screenshots/`: ảnh board, giao diện và ảnh đo kiểm theo kịch bản ở Phụ lục A.
- `references.tex`: tài liệu tham khảo.

Các ảnh nghiệm thu chỉ cần được đặt đúng tên trong `figures/screenshots/`, sau đó chạy lại `build.ps1`; khung giữ chỗ trong báo cáo sẽ tự động được thay bằng ảnh thật.

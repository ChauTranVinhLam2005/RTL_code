#!/bin/bash

SRC_DIR="../00_src"
TB_DIR="../10_tb"
LINT_DIR="./30_sim"
TOP_MODULE="full_adder_tb"  # Có thể đổi module testbench ở đây

# ============================
# Menu chính
# ============================

while true; do
  echo "=============================="
  echo "🔧 MENU CHÍNH - XCELIUM RTL"
  echo "1. Linting - Kiểm tra cú pháp"
  echo "2. Run mô phỏng (testbench)"
  echo "3. Xem kết quả (gui)"
  echo "0. Thoát"
  echo "=============================="
  read -p "👉 Nhập lựa chọn: " choice

  case $choice in
    1)
      echo "📂 Danh sách file linting trong $LINT_DIR:"
      select LINT_SCRIPT in "$LINT_DIR"/*.sh "Quay lại"; do
        if [[ "$REPLY" == "$(( $(ls "$LINT_DIR"/*.sh | wc -l) + 1 ))" || "$LINT_SCRIPT" == "Quay lại" ]]; then
          echo "↩️ Quay lại menu chính."
          break
        fi

      #   if [[ -x "$LINT_SCRIPT" ]]; then
      #     echo "▶️ Đang chạy: $LINT_SCRIPT"
      #     "$LINT_SCRIPT"
      #   else
      #     echo "⚠️ File không thực thi được hoặc không tồn tại: $LINT_SCRIPT"
      #   fi
      #   break
      # done
      ;;

    2)
      echo "▶️ Chạy mô phỏng với xrun..."
      if [[ -f "$TB_DIR/full_adder_tb.list" ]]; then
        xrun -64bit -sv -access +rwc -f "$TB_DIR/full_adder_tb.list" -top $TOP_MODULE
      else
        echo "❌ Không tìm thấy $TB_DIR/full_adder_tb.list!"
      fi
      ;;

    3)
      if [[ -f "xrun.log" ]]; then
        echo "📄 Hiển thị 30 dòng cuối của xrun.log:"
        tail -n 30 xrun.log
      else
        echo "⚠️ Chưa có log mô phỏng (xrun.log)"
      fi
      ;;

    0)
      echo "👋 Thoát chương trình. Tạm biệt!"
      exit 0
      ;;

    *)
      echo "❌ Lựa chọn không hợp lệ."
      ;;
  esac
done

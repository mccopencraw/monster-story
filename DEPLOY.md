# 勇敢的窗口怪獸 - 部署指南

## 方法一：使用 Cloudflare Pages（推薦）

### 1. 獲取 Cloudflare API Token
1. 前往 https://dash.cloudflare.com/profile/api-tokens
2. 點擊 "Create Token"
3. 選擇 "Custom template"
4. 設置以下權限：
   - Account: Cloudflare Pages: Edit
   - Zone: None
5. 創建並複製 Token

### 2. 部署命令
```bash
cd /home/ubuntu/projects/monster-story
export CLOUDFLARE_API_TOKEN="你的API_TOKEN"
npx wrangler@3.80.0 pages deploy dist --project-name=monster-story --branch=main
```

### 3. 部署成功後
訪問：`https://monster-story.pages.dev`

---

## 方法二：使用 Vercel

### 1. 安裝 Vercel CLI 並登錄
```bash
npm i -g vercel
vercel login
```

### 2. 部署
```bash
cd /home/ubuntu/projects/monster-story
vercel deploy dist
```

---

## 方法三：手動上傳到 Cloudflare Pages

1. 登入 https://pages.cloudflare.com
2. 創建新項目
3. 上傳 `dist` 資料夾中的所有文件

---

## 本地測試

```bash
cd /home/ubuntu/projects/monster-story
python3 -m http.server 8080
```

然後在瀏覽器打開：http://localhost:8080

---

## 項目結構

```
monster-story/
├── index.html          # 主網頁文件
├── story.md           # 故事文本
├── dist/              # 部署用文件
│   └── index.html
└── images/            # 生成的圖片（如有需要）
```

---

## 網頁功能

- ✅ 故事閱讀（起、承、轉、合）
- ✅ 插圖展示
- ✅ 互動式詞語填充練習
- ✅ 即時答案檢查
- ✅ 響應式設計（支援手機和電腦）

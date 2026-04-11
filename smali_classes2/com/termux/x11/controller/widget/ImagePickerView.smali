.class public Lcom/termux/x11/controller/widget/ImagePickerView;
.super Landroid/view/View;
.source "ImagePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activityType:I

.field private buttonIconDirectoryPath:Ljava/lang/String;

.field private final icon:Landroid/graphics/Bitmap;

.field private imageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/termux/x11/controller/widget/ImagePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/x11/controller/widget/ImagePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/R$styleable;->ImagePickerView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 72
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 74
    .local v3, "attr":I
    sget v4, Lcom/termux/x11/R$styleable;->ImagePickerView_activityTypeCode:I

    if-ne v3, v4, :cond_0

    .line 75
    sget v4, Lcom/termux/x11/MainActivity;->OPEN_FILE_REQUEST_CODE:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    .line 76
    goto :goto_1

    .line 72
    .end local v3    # "attr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/termux/x11/R$drawable;->icon_image_picker:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    .line 82
    sget v2, Lcom/termux/x11/R$drawable;->combo_box:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ImagePickerView;->setBackgroundResource(I)V

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ImagePickerView;->setClickable(Z)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ImagePickerView;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/termux/x11/R$integer;->load_button_icon_code:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/home/.buttonIcons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->buttonIconDirectoryPath:Ljava/lang/String;

    goto :goto_2

    .line 89
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/usr/glibc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->buttonIconDirectoryPath:Ljava/lang/String;

    .line 91
    :goto_2
    return-void
.end method

.method static synthetic lambda$setButtonIcon$2([Landroid/widget/PopupWindow;Landroid/content/Context;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p0, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonIconFile"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 159
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 161
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    invoke-virtual {v0}, Lcom/termux/x11/controller/ControlsEditorActivity;->unLoadCustomIcon()Z

    move-result v1

    .line 162
    .local v1, "delTag":Z
    if-eqz v1, :cond_0

    .line 163
    invoke-static {p2}, Lcom/termux/x11/controller/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 165
    :cond_0
    return-void
.end method

.method static synthetic lambda$setWineWallPaper$3(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userWallpaperFile"    # Ljava/io/File;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "data"    # Landroid/net/Uri;

    .line 189
    const/16 v0, 0x500

    invoke-static {p0, p3, v0}, Lcom/termux/x11/controller/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-static {v0, p1, v1, v2}, Lcom/termux/x11/controller/core/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    .line 193
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 194
    return-void
.end method

.method static synthetic lambda$setWineWallPaper$5(Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 1
    .param p0, "userWallpaperFile"    # Ljava/io/File;
    .param p1, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p2, "v"    # Landroid/view/View;

    .line 202
    invoke-static {p0}, Lcom/termux/x11/controller/core/FileUtils;->delete(Ljava/io/File;)Z

    .line 203
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 204
    return-void
.end method

.method private saveButtonIcon(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "iconId"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->buttonIconDirectoryPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 273
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .end local v1    # "directory":Ljava/io/File;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private setButtonIcon(Landroid/view/View;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->buttonIconDirectoryPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v1, "buttonIconFile":Ljava/io/File;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/termux/x11/R$layout;->image_picker_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/termux/x11/R$id;->ImageView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 128
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 130
    :cond_0
    sget v5, Lcom/termux/x11/R$drawable;->ic_x11_icon:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v4, v5

    .line 133
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    sget v5, Lcom/termux/x11/R$id;->BTBrowse:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 134
    .local v5, "browseButton":Landroid/view/View;
    new-instance v7, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0, v3, v4}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/content/Context;Landroid/widget/ImageView;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v7, Lcom/termux/x11/R$id;->BTRemove:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 156
    .local v7, "removeButton":Landroid/view/View;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 157
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 158
    new-instance v8, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v4, v0, v1}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;-><init>([Landroid/widget/PopupWindow;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_1
    const/16 v8, 0xc8

    const/16 v9, 0xf0

    invoke-static {p1, v2, v8, v9}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v8

    aput-object v8, v4, v6

    .line 169
    return-void
.end method

.method private setWineWallPaper(Landroid/view/View;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/termux/x11/controller/core/WineThemeManager;->getUserWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 175
    .local v1, "userWallpaperFile":Ljava/io/File;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/termux/x11/R$layout;->image_picker_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 176
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/termux/x11/R$id;->ImageView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 178
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 180
    :cond_0
    sget v5, Lcom/termux/x11/R$drawable;->wallpaper:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v4, v5

    .line 183
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    sget v5, Lcom/termux/x11/R$id;->BTBrowse:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 184
    .local v5, "browseButton":Landroid/view/View;
    new-instance v7, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, v0, v1, v4}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda6;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v7, Lcom/termux/x11/R$id;->BTRemove:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 199
    .local v7, "removeButton":Landroid/view/View;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 201
    new-instance v8, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1, v4}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda7;-><init>(Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_1
    const/16 v8, 0xc8

    const/16 v9, 0xf0

    invoke-static {p1, v2, v8, v9}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v8

    aput-object v8, v4, v6

    .line 208
    return-void
.end method


# virtual methods
.method public createButtonImageList(Landroid/view/View;)V
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;

    .line 211
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 212
    .local v2, "context":Landroid/content/Context;
    const/16 v3, 0x3c

    .line 213
    .local v3, "popupHeight":I
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 214
    .local v4, "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 215
    .local v5, "container":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v6}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, -0x2

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 218
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v6, v7, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 220
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/termux/x11/R$drawable;->color_frame_selected:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 221
    .local v7, "colorFrameSelected":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    .local v8, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v0}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v8, v0, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    aput-object v9, v0, v6

    move-object v9, v0

    .line 225
    .local v9, "popupWindow":[Landroid/widget/PopupWindow;
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 226
    .local v10, "delete":Landroid/widget/ImageView;
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const/4 v11, 0x0

    .line 228
    .local v11, "filenames":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 229
    .local v12, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v13, "inputcontrols/icons/0.png"

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 230
    .local v13, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "home/.buttonIcons"

    invoke-direct {v0, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    .local v0, "buttonIconsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 233
    new-instance v14, Lcom/termux/x11/controller/widget/ImagePickerView$1;

    invoke-direct {v14, v1}, Lcom/termux/x11/controller/widget/ImagePickerView$1;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;)V

    invoke-virtual {v0, v14}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v14

    .line 239
    .end local v0    # "buttonIconsDir":Ljava/io/File;
    if-eqz v13, :cond_0

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 229
    .restart local v13    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v14, v0

    if-eqz v13, :cond_1

    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v15, v0

    :try_start_4
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "popupHeight":I
    .end local v4    # "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    .end local v5    # "container":Landroid/widget/LinearLayout;
    .end local v7    # "colorFrameSelected":Landroid/graphics/Bitmap;
    .end local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "popupWindow":[Landroid/widget/PopupWindow;
    .end local v10    # "delete":Landroid/widget/ImageView;
    .end local v11    # "filenames":[Ljava/lang/String;
    .end local v12    # "prefix":Ljava/lang/String;
    .end local p1    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    throw v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "horizontalScrollView":Landroid/widget/HorizontalScrollView;
    .restart local v5    # "container":Landroid/widget/LinearLayout;
    .restart local v7    # "colorFrameSelected":Landroid/graphics/Bitmap;
    .restart local v8    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "popupWindow":[Landroid/widget/PopupWindow;
    .restart local v10    # "delete":Landroid/widget/ImageView;
    .restart local v11    # "filenames":[Ljava/lang/String;
    .restart local v12    # "prefix":Ljava/lang/String;
    .restart local p1    # "anchor":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 241
    :goto_1
    new-instance v0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, v2, v9}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda4;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/content/Context;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    if-nez v11, :cond_2

    .line 249
    return-void

    .line 251
    :cond_2
    array-length v0, v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v0, :cond_3

    aget-object v14, v11, v13

    .line 252
    .local v14, "name":Ljava/lang/String;
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v15, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v16, v0

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    new-instance v0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1, v2, v14, v9}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda5;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/content/Context;Ljava/lang/String;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "imageView":Landroid/widget/ImageView;
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    const/4 v6, 0x0

    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 265
    const/16 v0, 0x3c

    move-object/from16 v6, p1

    const/4 v13, 0x0

    invoke-static {v6, v4, v13, v0}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    aput-object v0, v9, v13

    .line 266
    return-void
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$createButtonImageList$6$com-termux-x11-controller-widget-ImagePickerView(Landroid/content/Context;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 242
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 243
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->setCustomButtonIcon(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->invalidate()V

    .line 245
    const/4 v1, 0x0

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 246
    :cond_0
    return-void
.end method

.method synthetic lambda$createButtonImageList$7$com-termux-x11-controller-widget-ImagePickerView(Landroid/content/Context;Ljava/lang/String;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p4, "v"    # Landroid/view/View;

    .line 256
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 257
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    const-string v1, ".png"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "baseName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->setCustomButtonIcon(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->invalidate()V

    .line 260
    const/4 v2, 0x0

    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    aget-object v2, p3, v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 261
    :cond_0
    return-void
.end method

.method synthetic lambda$setButtonIcon$0$com-termux-x11-controller-widget-ImagePickerView(Landroid/content/Context;Landroid/widget/ImageView;[Landroid/widget/PopupWindow;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p4, "data"    # Landroid/net/Uri;

    .line 139
    const/16 v0, 0x500

    invoke-static {p1, p4, v0}, Lcom/termux/x11/controller/core/ImageUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/termux/x11/controller/core/ImageUtils;->getFileMD5(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "md5":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->buttonIconDirectoryPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/termux/x11/controller/widget/ImagePickerView;->setImageId(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    invoke-direct {p0, v1}, Lcom/termux/x11/controller/widget/ImagePickerView;->saveButtonIcon(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 146
    .local v3, "saveFile":Ljava/io/File;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-static {v0, v3, v4, v5}, Lcom/termux/x11/controller/core/ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    .line 148
    .end local v3    # "saveFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 150
    return-object v1
.end method

.method synthetic lambda$setButtonIcon$1$com-termux-x11-controller-widget-ImagePickerView(Landroid/content/Context;Landroid/widget/ImageView;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p4, "v"    # Landroid/view/View;

    .line 135
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 136
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    new-instance v2, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda3;-><init>(Lcom/termux/x11/controller/widget/ImagePickerView;Landroid/content/Context;Landroid/widget/ImageView;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->setOpenFileCallback(Lcom/termux/x11/controller/ControlsEditorActivity$LoadCallBack;)V

    .line 152
    iget v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/controller/ControlsEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    return-void
.end method

.method synthetic lambda$setWineWallPaper$4$com-termux-x11-controller-widget-ImagePickerView(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userWallpaperFile"    # Ljava/io/File;
    .param p3, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p4, "v"    # Landroid/view/View;

    .line 185
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/MainActivity;

    .line 186
    .local v0, "activity":Lcom/termux/x11/MainActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    new-instance v2, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, p3}, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/io/File;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v2}, Lcom/termux/x11/MainActivity;->setOpenFileCallback(Lcom/termux/x11/controller/core/Callback;)V

    .line 195
    iget v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    invoke-virtual {v0, v1, v2}, Lcom/termux/x11/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 113
    iget v0, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$integer;->load_button_icon_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/ImagePickerView;->setButtonIcon(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/widget/ImagePickerView;->createButtonImageList(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/x11/controller/widget/ImagePickerView;->setWineWallPaper(Landroid/view/View;)V

    .line 119
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getWidth()I

    move-result v0

    .line 98
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ImagePickerView;->getHeight()I

    move-result v1

    .line 99
    .local v1, "height":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 102
    .local v2, "rectSize":F
    int-to-float v3, v0

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 103
    .local v3, "startX":F
    int-to-float v5, v1

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    .line 105
    .local v5, "startY":F
    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v3, v2

    add-float v9, v5, v2

    invoke-direct {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    .local v7, "dstRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 109
    return-void

    .line 99
    .end local v2    # "rectSize":F
    .end local v3    # "startX":F
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "startY":F
    .end local v6    # "srcRect":Landroid/graphics/Rect;
    .end local v7    # "dstRect":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void
.end method

.method public setActivityType(I)V
    .locals 0
    .param p1, "activityType"    # I

    .line 49
    iput p1, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->activityType:I

    .line 50
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/termux/x11/controller/widget/ImagePickerView;->imageId:Ljava/lang/String;

    .line 54
    return-void
.end method

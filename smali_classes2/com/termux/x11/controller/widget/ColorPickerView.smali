.class public Lcom/termux/x11/controller/widget/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final colors:[I


# instance fields
.field private activityType:I

.field private final colorFrame:Landroid/graphics/Bitmap;

.field private currentColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/termux/x11/controller/widget/ColorPickerView;->colors:[I

    return-void

    :array_0
    .array-data 4
        0xff8f00
        0xd32f2f
        0x9575cd
        0x2e7d32
        0x838f
        0x277bd
        0x607d8b
        0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/termux/x11/controller/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/termux/x11/controller/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const v0, 0xffffff

    iput v0, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    .line 52
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/termux/x11/R$styleable;->ImagePickerView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 54
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 56
    .local v3, "attr":I
    sget v4, Lcom/termux/x11/R$styleable;->ImagePickerView_activityTypeCode:I

    if-ne v3, v4, :cond_0

    .line 57
    sget v4, Lcom/termux/x11/MainActivity;->OPEN_FILE_REQUEST_CODE:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->activityType:I

    .line 58
    goto :goto_1

    .line 54
    .end local v3    # "attr":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/termux/x11/R$drawable;->color_frame:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    .line 64
    sget v2, Lcom/termux/x11/R$drawable;->combo_box:I

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ColorPickerView;->setBackgroundResource(I)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ColorPickerView;->setClickable(Z)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/termux/x11/controller/widget/ColorPickerView;->setFocusable(Z)V

    .line 67
    invoke-virtual {p0, p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public static toARGB(I)I
    .locals 4
    .param p0, "rgb"    # I

    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static toRGB(I)I
    .locals 4
    .param p0, "argb"    # I

    .line 112
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    invoke-static {v0}, Lcom/termux/x11/controller/widget/ColorPickerView;->toARGB(I)I

    move-result v0

    return v0
.end method

.method public getColorAsString()Ljava/lang/String;
    .locals 4

    .line 80
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v1, 0xffffff

    iget v2, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "#%06X"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setButtonColor$1$com-termux-x11-controller-widget-ColorPickerView(Landroid/content/Context;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 174
    move-object v0, p1

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 175
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->setButtonColor(I)V

    .line 176
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->invalidate()V

    .line 177
    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 178
    :cond_0
    return-void
.end method

.method synthetic lambda$setButtonColor$2$com-termux-x11-controller-widget-ColorPickerView(ILandroid/content/Context;[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p4, "v"    # Landroid/view/View;

    .line 187
    iput p1, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    .line 188
    move-object v0, p2

    check-cast v0, Lcom/termux/x11/controller/ControlsEditorActivity;

    .line 189
    .local v0, "activity":Lcom/termux/x11/controller/ControlsEditorActivity;
    iget v1, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    invoke-virtual {v0, v1}, Lcom/termux/x11/controller/ControlsEditorActivity;->setButtonColor(I)V

    .line 190
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->invalidate()V

    .line 191
    const/4 v1, 0x0

    aget-object v2, p3, v1

    if-eqz v2, :cond_0

    aget-object v1, p3, v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method

.method synthetic lambda$setWineWallPaperColor$0$com-termux-x11-controller-widget-ColorPickerView(I[Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "popupWindow"    # [Landroid/widget/PopupWindow;
    .param p3, "v"    # Landroid/view/View;

    .line 144
    iput p1, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    .line 145
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->invalidate()V

    .line 146
    const/4 v0, 0x0

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 117
    iget v0, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->activityType:I

    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/termux/x11/R$integer;->load_button_icon_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/widget/ColorPickerView;->setButtonColor(Landroid/view/View;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/termux/x11/controller/widget/ColorPickerView;->setWineWallPaperColor(Landroid/view/View;)V

    .line 122
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getWidth()I

    move-result v0

    .line 88
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getHeight()I

    move-result v1

    .line 89
    .local v1, "height":I
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v3

    sub-float/2addr v2, v3

    .line 92
    .local v2, "rectSize":F
    int-to-float v3, v0

    sub-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v5

    sub-float/2addr v3, v5

    .line 93
    .local v3, "startX":F
    int-to-float v5, v1

    sub-float/2addr v5, v2

    mul-float v5, v5, v4

    .line 95
    .local v5, "startY":F
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v4, "paint":Landroid/graphics/Paint;
    iget v6, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    invoke-static {v6}, Lcom/termux/x11/controller/widget/ColorPickerView;->toARGB(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 100
    add-float v9, v3, v2

    add-float v10, v5, v2

    move-object v6, p1

    move v7, v3

    move v8, v5

    move-object v11, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v12, v12, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    .local v6, "srcRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v3, v2

    add-float v9, v5, v2

    invoke-direct {v7, v3, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    .local v7, "dstRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    return-void

    .line 89
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

    .line 39
    iput p1, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->activityType:I

    .line 40
    return-void
.end method

.method public setButtonColor(Landroid/view/View;)V
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x3c

    .line 156
    .local v1, "popupHeight":I
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .local v2, "container":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/termux/x11/R$drawable;->color_frame_selected:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 163
    .local v5, "colorFrameSelected":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v6, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    aput-object v7, v4, v3

    .line 167
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v7, "delete":Landroid/widget/ImageView;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "inputcontrols/icons/0.png"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_0
    goto :goto_1

    .line 169
    .restart local v8    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v10

    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "popupHeight":I
    .end local v2    # "container":Landroid/widget/LinearLayout;
    .end local v4    # "popupWindow":[Landroid/widget/PopupWindow;
    .end local v5    # "colorFrameSelected":Landroid/graphics/Bitmap;
    .end local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "delete":Landroid/widget/ImageView;
    .end local p1    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 171
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "popupHeight":I
    .restart local v2    # "container":Landroid/widget/LinearLayout;
    .restart local v4    # "popupWindow":[Landroid/widget/PopupWindow;
    .restart local v5    # "colorFrameSelected":Landroid/graphics/Bitmap;
    .restart local v6    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "delete":Landroid/widget/ImageView;
    .restart local p1    # "anchor":Landroid/view/View;
    :catch_0
    move-exception v8

    .line 173
    :goto_1
    new-instance v8, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v0, v4}, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda1;-><init>(Lcom/termux/x11/controller/widget/ColorPickerView;Landroid/content/Context;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    sget-object v8, Lcom/termux/x11/controller/widget/ColorPickerView;->colors:[I

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget v11, v8, v10

    .line 182
    .local v11, "color":I
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v12, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget v13, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    if-ne v11, v13, :cond_2

    move-object v13, v5

    goto :goto_3

    :cond_2
    iget-object v13, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-static {v11}, Lcom/termux/x11/controller/widget/ColorPickerView;->toARGB(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 186
    new-instance v13, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;

    invoke-direct {v13, p0, v11, v0, v4}, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;-><init>(Lcom/termux/x11/controller/widget/ColorPickerView;ILandroid/content/Context;[Landroid/widget/PopupWindow;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    .end local v11    # "color":I
    .end local v12    # "imageView":Landroid/widget/ImageView;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 195
    :cond_3
    const/16 v8, 0x3c

    invoke-static {p1, v2, v3, v8}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v8

    aput-object v8, v4, v3

    .line 196
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 75
    invoke-static {p1}, Lcom/termux/x11/controller/widget/ColorPickerView;->toRGB(I)I

    move-result v0

    iput v0, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    .line 76
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->invalidate()V

    .line 77
    return-void
.end method

.method public setWineWallPaperColor(Landroid/view/View;)V
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/termux/x11/controller/widget/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    const/16 v1, 0x3c

    .line 127
    .local v1, "popupHeight":I
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, "container":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/termux/x11/R$drawable;->color_frame_selected:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 134
    .local v5, "colorFrameSelected":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v6, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/termux/x11/controller/core/UnitUtils;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v6, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/PopupWindow;

    const/4 v7, 0x0

    aput-object v7, v4, v3

    .line 138
    .local v4, "popupWindow":[Landroid/widget/PopupWindow;
    sget-object v7, Lcom/termux/x11/controller/widget/ColorPickerView;->colors:[I

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    .line 139
    .local v10, "color":I
    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v11, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget v12, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->currentColor:I

    if-ne v10, v12, :cond_0

    move-object v12, v5

    goto :goto_1

    :cond_0
    iget-object v12, p0, Lcom/termux/x11/controller/widget/ColorPickerView;->colorFrame:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    invoke-static {v10}, Lcom/termux/x11/controller/widget/ColorPickerView;->toARGB(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 143
    new-instance v12, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0, v10, v4}, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/termux/x11/controller/widget/ColorPickerView;I[Landroid/widget/PopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    .end local v10    # "color":I
    .end local v11    # "imageView":Landroid/widget/ImageView;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 150
    :cond_1
    const/16 v7, 0x3c

    invoke-static {p1, v2, v3, v7}, Lcom/termux/x11/controller/core/AppUtils;->showPopupWindow(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v7

    aput-object v7, v4, v3

    .line 151
    return-void
.end method

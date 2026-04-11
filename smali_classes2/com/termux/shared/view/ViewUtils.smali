.class public Lcom/termux/shared/view/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViewUtils"

.field public static VIEW_UTILS_LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    nop

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 213
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 214
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 216
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplayOrientation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 172
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public static getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activitySize"    # Z

    .line 188
    new-instance v0, Landroidx/window/WindowManager;

    invoke-direct {v0, p0}, Landroidx/window/WindowManager;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "windowManager":Landroidx/window/WindowManager;
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroidx/window/WindowManager;->getCurrentWindowMetrics()Landroidx/window/WindowMetrics;

    move-result-object v1

    .local v1, "windowMetrics":Landroidx/window/WindowMetrics;
    goto :goto_0

    .line 193
    .end local v1    # "windowMetrics":Landroidx/window/WindowMetrics;
    :cond_0
    invoke-virtual {v0}, Landroidx/window/WindowManager;->getMaximumWindowMetrics()Landroidx/window/WindowMetrics;

    move-result-object v1

    .line 194
    .restart local v1    # "windowMetrics":Landroidx/window/WindowMetrics;
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroidx/window/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroidx/window/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static getWindowAndViewRects(Landroid/view/View;I)[Landroid/graphics/Rect;
    .locals 17
    .param p0, "view"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 70
    :cond_0
    sget-boolean v2, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    .line 74
    .local v2, "view_utils_logging_enabled":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v3, "windowRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, "actionBarHeight":I
    const/4 v5, 0x0

    .line 80
    .local v5, "isInMultiWindowMode":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 81
    .local v6, "context":Landroid/content/Context;
    instance-of v7, v6, Landroidx/appcompat/app/AppCompatActivity;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    .line 82
    move-object v7, v6

    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    .line 83
    .local v7, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result v4

    .line 84
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v8, :cond_2

    move-object v8, v6

    check-cast v8, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->isInMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    move v5, v8

    .end local v7    # "actionBar":Landroidx/appcompat/app/ActionBar;
    goto :goto_2

    .line 85
    :cond_3
    instance-of v7, v6, Landroid/app/Activity;

    if-eqz v7, :cond_6

    .line 86
    move-object v7, v6

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 87
    .local v7, "actionBar":Landroid/app/ActionBar;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    .line 88
    :cond_4
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v8, :cond_5

    move-object v8, v6

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    move v5, v8

    goto :goto_3

    .line 85
    .end local v7    # "actionBar":Landroid/app/ActionBar;
    :cond_6
    :goto_2
    nop

    .line 91
    :goto_3
    invoke-static {v6}, Lcom/termux/shared/view/ViewUtils;->getDisplayOrientation(Landroid/content/Context;)I

    move-result v7

    .line 95
    .local v7, "displayOrientation":I
    new-instance v8, Landroid/graphics/Rect;

    iget v11, v3, Landroid/graphics/Rect;->left:I

    iget v12, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v4

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 101
    .local v8, "windowAvailableRect":Landroid/graphics/Rect;
    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 102
    .local v12, "viewsLocationInWindow":[I
    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    aget v13, v12, v9

    .line 104
    .local v13, "viewLeft":I
    aget v14, v12, v10

    .line 106
    .local v14, "viewTop":I
    const-string v15, "ViewUtils"

    if-eqz v2, :cond_7

    .line 107
    const-string v11, "getWindowAndViewRects:"

    invoke-static {v15, v11}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "windowRect: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", windowAvailableRect: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/termux/shared/view/ViewUtils;->toRectString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "viewsLocationInWindow: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v11}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activitySize: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v10}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v11

    invoke-static {v11}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", displaySize: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 111
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/termux/shared/view/ViewUtils;->getDisplaySize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/termux/shared/view/ViewUtils;->toPointString(Landroid/graphics/Point;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", displayOrientation="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_7
    if-eqz v5, :cond_b

    .line 116
    if-ne v7, v10, :cond_a

    .line 119
    iget v9, v3, Landroid/graphics/Rect;->top:I

    if-eq v1, v9, :cond_9

    .line 120
    if-eqz v2, :cond_8

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Window top does not equal statusBarHeight "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " in multi-window portrait mode. Window is possibly bottom app in split screen mode. Adding windowRect.top "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " to viewTop."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_8
    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v9

    goto :goto_4

    .line 124
    :cond_9
    if-eqz v2, :cond_b

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "windowRect.top equals statusBarHeight "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " in multi-window portrait mode. Window is possibly top app in split screen mode."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 128
    :cond_a
    const/4 v9, 0x2

    if-ne v7, v9, :cond_b

    .line 131
    iget v9, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v9

    .line 135
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v13

    .line 136
    .local v9, "viewRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v14

    .line 137
    .local v11, "viewBottom":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v14, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 139
    .local v10, "viewRect":Landroid/graphics/Rect;
    const/4 v0, 0x2

    if-ne v7, v0, :cond_d

    iget v0, v8, Landroid/graphics/Rect;->right:I

    if-le v9, v0, :cond_d

    .line 140
    if-eqz v2, :cond_c

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewRight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is greater than windowAvailableRect.right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in landscape mode. Setting windowAvailableRect.right to viewRight since it may not include navbar height."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_c
    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 145
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v10, v0, v1

    return-object v0

    .line 68
    .end local v2    # "view_utils_logging_enabled":Z
    .end local v3    # "windowRect":Landroid/graphics/Rect;
    .end local v4    # "actionBarHeight":I
    .end local v5    # "isInMultiWindowMode":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "displayOrientation":I
    .end local v8    # "windowAvailableRect":Landroid/graphics/Rect;
    .end local v9    # "viewRight":I
    .end local v10    # "viewRect":Landroid/graphics/Rect;
    .end local v11    # "viewBottom":I
    .end local v12    # "viewsLocationInWindow":[I
    .end local v13    # "viewLeft":I
    .end local v14    # "viewTop":I
    :cond_e
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isRectAbove(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "r1"    # Landroid/graphics/Rect;
    .param p1, "r2"    # Landroid/graphics/Rect;

    .line 157
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewFullyVisible(Landroid/view/View;I)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I

    .line 47
    invoke-static {p0, p1}, Lcom/termux/shared/view/ViewUtils;->getWindowAndViewRects(Landroid/view/View;I)[Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    .local v0, "windowAndViewRects":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return v1

    .line 50
    :cond_0
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public static pxToDp(Landroid/content/Context;F)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # F

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p1, v0

    return v0
.end method

.method public static setIsViewUtilsLoggingEnabled(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 34
    sput-boolean p0, Lcom/termux/shared/view/ViewUtils;->VIEW_UTILS_LOGGING_ENABLED:Z

    .line 35
    return-void
.end method

.method public static setLayoutMarginsInDp(Landroid/view/View;IIII)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, "context":Landroid/content/Context;
    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p2

    invoke-static {v0, v2}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, p3

    .line 236
    invoke-static {v0, v3}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, p4

    invoke-static {v0, v4}, Lcom/termux/shared/view/ViewUtils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    .line 235
    invoke-static {p0, v1, v2, v3, v4}, Lcom/termux/shared/view/ViewUtils;->setLayoutMarginsInPixels(Landroid/view/View;IIII)V

    .line 237
    return-void
.end method

.method public static setLayoutMarginsInPixels(Landroid/view/View;IIII)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 242
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public static toPointString(Landroid/graphics/Point;)Ljava/lang/String;
    .locals 2
    .param p0, "point"    # Landroid/graphics/Point;

    .line 205
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toRectString(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 3
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 199
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

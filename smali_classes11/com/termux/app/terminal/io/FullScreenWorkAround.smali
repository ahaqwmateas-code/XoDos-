.class public Lcom/termux/app/terminal/io/FullScreenWorkAround;
.super Ljava/lang/Object;
.source "FullScreenWorkAround.java"


# instance fields
.field private final mChildOfContent:Landroid/view/View;

.field private final mNavBarHeight:I

.field private mUsableHeightPrevious:I

.field private final mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$eUOIuhYNiN4iXNFvIO_4MyqCN8k(Lcom/termux/app/terminal/io/FullScreenWorkAround;)V
    .locals 0

    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f090101

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    .local v0, "content":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 35
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getNavBarHeight()I

    move-result v1

    iput v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mNavBarHeight:I

    .line 36
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/termux/app/terminal/io/FullScreenWorkAround$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround$$ExternalSyntheticLambda0;-><init>(Lcom/termux/app/terminal/io/FullScreenWorkAround;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 37
    return-void
.end method

.method public static apply(Lcom/termux/app/TermuxActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/termux/app/TermuxActivity;

    .line 27
    new-instance v0, Lcom/termux/app/terminal/io/FullScreenWorkAround;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 28
    return-void
.end method

.method private computeUsableHeight()I
    .locals 3

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 66
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getNavBarHeight()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mNavBarHeight:I

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 6

    .line 40
    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->computeUsableHeight()I

    move-result v0

    .line 41
    .local v0, "usableHeightNow":I
    iget v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mUsableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 43
    .local v1, "usableHeightSansKeyboard":I
    sub-int v2, v1, v0

    .line 44
    .local v2, "heightDifference":I
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    sub-int v4, v1, v2

    invoke-direct {p0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->getNavBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mViewGroupLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 55
    iput v0, p0, Lcom/termux/app/terminal/io/FullScreenWorkAround;->mUsableHeightPrevious:I

    .line 57
    .end local v1    # "usableHeightSansKeyboard":I
    .end local v2    # "heightDifference":I
    :cond_1
    return-void
.end method

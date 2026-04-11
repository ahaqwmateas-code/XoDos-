.class public Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TerminalToolbarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/TerminalToolbarViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPageChangeListener"
.end annotation


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field final mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 99
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 101
    iput-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 102
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 106
    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 113
    :cond_0
    return-void
.end method

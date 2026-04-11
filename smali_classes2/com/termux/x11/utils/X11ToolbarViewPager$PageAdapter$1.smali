.class Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;
.super Landroid/graphics/drawable/ColorDrawable;
.source "X11ToolbarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;


# direct methods
.method constructor <init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;
    .param p2, "arg0"    # I

    .line 85
    iput-object p1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$1;->this$0:Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public hasFocusStateSpecified()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

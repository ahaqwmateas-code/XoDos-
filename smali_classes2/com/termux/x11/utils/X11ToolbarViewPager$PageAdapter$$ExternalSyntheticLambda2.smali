.class public final synthetic Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

    iput-object p2, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;

    iget-object v1, p0, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/termux/x11/utils/X11ToolbarViewPager$PageAdapter;->lambda$instantiateItem$2$com-termux-x11-utils-X11ToolbarViewPager$PageAdapter(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

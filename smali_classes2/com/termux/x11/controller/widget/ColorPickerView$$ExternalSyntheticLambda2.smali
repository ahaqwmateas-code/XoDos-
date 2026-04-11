.class public final synthetic Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/x11/controller/widget/ColorPickerView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:[Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/x11/controller/widget/ColorPickerView;ILandroid/content/Context;[Landroid/widget/PopupWindow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/controller/widget/ColorPickerView;

    iput p2, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$3:[Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$0:Lcom/termux/x11/controller/widget/ColorPickerView;

    iget v1, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/x11/controller/widget/ColorPickerView$$ExternalSyntheticLambda2;->f$3:[Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/termux/x11/controller/widget/ColorPickerView;->lambda$setButtonColor$2$com-termux-x11-controller-widget-ColorPickerView(ILandroid/content/Context;[Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method

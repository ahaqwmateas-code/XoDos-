.class public final synthetic Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:[Landroid/widget/PopupWindow;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Landroid/widget/PopupWindow;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$0:[Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$0:[Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/termux/x11/controller/widget/ImagePickerView$$ExternalSyntheticLambda1;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/x11/controller/widget/ImagePickerView;->lambda$setButtonIcon$2([Landroid/widget/PopupWindow;Landroid/content/Context;Ljava/io/File;Landroid/view/View;)V

    return-void
.end method

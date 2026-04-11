.class Lcom/termux/x11/LorieView$3;
.super Landroid/graphics/drawable/ColorDrawable;
.source "LorieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/LorieView;->triggerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LorieView;


# direct methods
.method constructor <init>(Lcom/termux/x11/LorieView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/LorieView;
    .param p2, "arg0"    # I

    .line 704
    iput-object p1, p0, Lcom/termux/x11/LorieView$3;->this$0:Lcom/termux/x11/LorieView;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public hasFocusStateSpecified()Z
    .locals 1

    .line 710
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 706
    const/4 v0, 0x1

    return v0
.end method

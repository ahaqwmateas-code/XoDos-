.class public final synthetic Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/x11/controller/core/AppUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/termux/x11/controller/core/AppUtils;->lambda$showKeyboard$0(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

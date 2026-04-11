.class Lcom/termux/shared/activities/TextIOActivity$1;
.super Ljava/lang/Object;
.source "TextIOActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/activities/TextIOActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/shared/activities/TextIOActivity;


# direct methods
.method constructor <init>(Lcom/termux/shared/activities/TextIOActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/shared/activities/TextIOActivity;

    .line 172
    iput-object p1, p0, Lcom/termux/shared/activities/TextIOActivity$1;->this$0:Lcom/termux/shared/activities/TextIOActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/termux/shared/activities/TextIOActivity$1;->this$0:Lcom/termux/shared/activities/TextIOActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/activities/TextIOActivity;->access$000(Lcom/termux/shared/activities/TextIOActivity;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 174
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 176
    return-void
.end method

.class Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;
.super Ljava/lang/Object;
.source "LoriePreferences.java"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->setSummary(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/preference/Preference$SummaryProvider<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    .line 507
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;->this$0:Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    iput p2, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "p"    # Landroidx/preference/Preference;

    .line 511
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;->this$0:Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;

    invoke-virtual {v0}, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/termux/x11/LoriePreferences$LoriePreferenceFragment$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

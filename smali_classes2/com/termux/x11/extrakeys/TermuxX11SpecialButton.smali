.class public Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;
.super Ljava/lang/Object;
.source "TermuxX11SpecialButton.java"


# static fields
.field public static final ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

.field public static final CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

.field public static final FN:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

.field public static final META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

.field public static final SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->map:Ljava/util/HashMap;

    .line 12
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const-string v1, "CTRL"

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->CTRL:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 13
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const-string v1, "ALT"

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->ALT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 14
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const-string v1, "SHIFT"

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->SHIFT:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 15
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const-string v1, "META"

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->META:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    .line 16
    new-instance v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    const-string v1, "FN"

    invoke-direct {v0, v1}, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->FN:Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->key:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/termux/x11/extrakeys/TermuxX11SpecialButton;->key:Ljava/lang/String;

    return-object v0
.end method

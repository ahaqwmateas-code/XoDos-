.class public final enum Lcom/termux/app/models/UserAction;
.super Ljava/lang/Enum;
.source "UserAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/models/UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/models/UserAction;

.field public static final enum ABOUT:Lcom/termux/app/models/UserAction;

.field public static final enum REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/app/models/UserAction;
    .locals 3

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/termux/app/models/UserAction;

    sget-object v1, Lcom/termux/app/models/UserAction;->ABOUT:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/termux/app/models/UserAction;

    const/4 v1, 0x0

    const-string v2, "about"

    const-string v3, "ABOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->ABOUT:Lcom/termux/app/models/UserAction;

    .line 6
    new-instance v0, Lcom/termux/app/models/UserAction;

    const/4 v1, 0x1

    const-string v2, "report issue from transcript"

    const-string v3, "REPORT_ISSUE_FROM_TRANSCRIPT"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    .line 3
    invoke-static {}, Lcom/termux/app/models/UserAction;->$values()[Lcom/termux/app/models/UserAction;

    move-result-object v0

    sput-object v0, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/termux/app/models/UserAction;->name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/models/UserAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/termux/app/models/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/app/models/UserAction;

    return-object v0
.end method

.method public static values()[Lcom/termux/app/models/UserAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    invoke-virtual {v0}, [Lcom/termux/app/models/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/models/UserAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/termux/app/models/UserAction;->name:Ljava/lang/String;

    return-object v0
.end method

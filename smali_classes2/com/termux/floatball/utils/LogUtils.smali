.class public Lcom/termux/floatball/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/floatball/utils/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z

.field public static allowE:Z

.field public static allowI:Z

.field public static allowV:Z

.field public static allowW:Z

.field public static allowWtf:Z

.field public static customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/termux/floatball/utils/LogUtils;->customTagPrefix:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowD:Z

    .line 23
    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowE:Z

    .line 24
    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowI:Z

    .line 25
    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowV:Z

    .line 26
    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowW:Z

    .line 27
    sput-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowWtf:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 73
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 76
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 83
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 85
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 88
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 95
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 97
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 100
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 107
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 109
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 112
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_0
    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 7
    .param p0, "caller"    # Ljava/lang/StackTraceElement;

    .line 30
    const-string v0, "%s.%s(L:%d)"

    .line 31
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "callerClazzName":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/termux/floatball/utils/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 35
    return-object v0
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 119
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 121
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 124
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 131
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 133
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 136
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 143
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 145
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 148
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 155
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 157
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 167
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 169
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 172
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 179
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 181
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 191
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 193
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 196
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 204
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 206
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 216
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 218
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 221
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0, p1}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {v1, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .line 228
    sget-boolean v0, Lcom/termux/floatball/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/termux/floatball/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 230
    .local v0, "caller":Ljava/lang/StackTraceElement;
    invoke-static {v0}, Lcom/termux/floatball/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "tag":Ljava/lang/String;
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    if-eqz v2, :cond_1

    .line 233
    sget-object v2, Lcom/termux/floatball/utils/LogUtils;->customLogger:Lcom/termux/floatball/utils/LogUtils$CustomLogger;

    invoke-interface {v2, v1, p0}, Lcom/termux/floatball/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_0
    return-void
.end method

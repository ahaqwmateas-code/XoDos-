.class final Lj$/util/concurrent/DesugarUnsafe;
.super Ljava/lang/Object;
.source "DesugarUnsafe.java"


# static fields
.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    invoke-static {}, Lj$/util/concurrent/DesugarUnsafe;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    sput-object v1, Lj$/util/concurrent/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    .end local v0    # "field":Ljava/lang/reflect/Field;
    return-void

    .line 50
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Couldn\'t get the Unsafe"

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAndAddInt(Lsun/misc/Unsafe;Ljava/lang/Object;JI)I
    .locals 7
    .param p0, "unsafe"    # Lsun/misc/Unsafe;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # I

    .line 126
    nop

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    .line 127
    .local v6, "v":I
    add-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    return v6
.end method

.method public static final getAndAddLong(Lsun/misc/Unsafe;Ljava/lang/Object;JJ)J
    .locals 10
    .param p0, "unsafe"    # Lsun/misc/Unsafe;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # J

    .line 146
    nop

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 147
    .local v8, "v":J
    add-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-wide v8
.end method

.method public static final getAndSetInt(Lsun/misc/Unsafe;Ljava/lang/Object;JI)I
    .locals 7
    .param p0, "unsafe"    # Lsun/misc/Unsafe;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # I

    .line 166
    nop

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    .line 167
    .local v6, "v":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    return v6
.end method

.method public static final getAndSetLong(Lsun/misc/Unsafe;Ljava/lang/Object;JJ)J
    .locals 10
    .param p0, "unsafe"    # Lsun/misc/Unsafe;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # J

    .line 186
    nop

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 187
    .local v8, "v":J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-wide v8
.end method

.method public static final getAndSetObject(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "unsafe"    # Lsun/misc/Unsafe;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 206
    nop

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 207
    .local v6, "v":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v6

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-object v6
.end method

.method private static getField()Ljava/lang/reflect/Field;
    .locals 7

    .line 57
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 60
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lsun/misc/Unsafe;

    .line 61
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    return-object v4

    .line 59
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Couldn\'t find the Unsafe"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 105
    sget-object v0, Lj$/util/concurrent/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

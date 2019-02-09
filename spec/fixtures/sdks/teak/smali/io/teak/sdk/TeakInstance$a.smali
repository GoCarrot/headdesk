.class final enum Lio/teak/sdk/TeakInstance$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/TeakInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/TeakInstance$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/TeakInstance$a;

.field public static final enum b:Lio/teak/sdk/TeakInstance$a;

.field public static final enum c:Lio/teak/sdk/TeakInstance$a;

.field public static final enum d:Lio/teak/sdk/TeakInstance$a;

.field public static final enum e:Lio/teak/sdk/TeakInstance$a;

.field public static final enum f:Lio/teak/sdk/TeakInstance$a;

.field private static final h:[[Lio/teak/sdk/TeakInstance$a;

.field private static final synthetic i:[Lio/teak/sdk/TeakInstance$a;


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Disabled"

    const-string v2, "Disabled"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    .line 253
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Allocated"

    const-string v2, "Allocated"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->b:Lio/teak/sdk/TeakInstance$a;

    .line 254
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Created"

    const-string v2, "Created"

    invoke-direct {v0, v1, v6, v2}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->c:Lio/teak/sdk/TeakInstance$a;

    .line 255
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Active"

    const-string v2, "Active"

    invoke-direct {v0, v1, v7, v2}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->d:Lio/teak/sdk/TeakInstance$a;

    .line 256
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Paused"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v8, v2}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->e:Lio/teak/sdk/TeakInstance$a;

    .line 257
    new-instance v0, Lio/teak/sdk/TeakInstance$a;

    const-string v1, "Destroyed"

    const/4 v2, 0x5

    const-string v3, "Destroyed"

    invoke-direct {v0, v1, v2, v3}, Lio/teak/sdk/TeakInstance$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->f:Lio/teak/sdk/TeakInstance$a;

    .line 251
    const/4 v0, 0x6

    new-array v0, v0, [Lio/teak/sdk/TeakInstance$a;

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->b:Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->c:Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->d:Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->e:Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->f:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->i:[Lio/teak/sdk/TeakInstance$a;

    .line 261
    const/4 v0, 0x6

    new-array v0, v0, [[Lio/teak/sdk/TeakInstance$a;

    new-array v1, v4, [Lio/teak/sdk/TeakInstance$a;

    aput-object v1, v0, v4

    new-array v1, v5, [Lio/teak/sdk/TeakInstance$a;

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->c:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Lio/teak/sdk/TeakInstance$a;

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->d:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [Lio/teak/sdk/TeakInstance$a;

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->e:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v6, [Lio/teak/sdk/TeakInstance$a;

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->f:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->d:Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [Lio/teak/sdk/TeakInstance$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/TeakInstance$a;->h:[[Lio/teak/sdk/TeakInstance$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput-object p3, p0, Lio/teak/sdk/TeakInstance$a;->g:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/TeakInstance$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 251
    const-class v0, Lio/teak/sdk/TeakInstance$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/TeakInstance$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/TeakInstance$a;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lio/teak/sdk/TeakInstance$a;->i:[Lio/teak/sdk/TeakInstance$a;

    invoke-virtual {v0}, [Lio/teak/sdk/TeakInstance$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/TeakInstance$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/TeakInstance$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    sget-object v2, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    if-ne p1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    sget-object v2, Lio/teak/sdk/TeakInstance$a;->h:[[Lio/teak/sdk/TeakInstance$a;

    invoke-virtual {p0}, Lio/teak/sdk/TeakInstance$a;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 279
    invoke-virtual {p1, v5}, Lio/teak/sdk/TeakInstance$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 281
    goto :goto_0
.end method

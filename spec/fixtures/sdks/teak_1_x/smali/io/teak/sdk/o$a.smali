.class final enum Lio/teak/sdk/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/o$a;

.field public static final enum b:Lio/teak/sdk/o$a;

.field public static final enum c:Lio/teak/sdk/o$a;

.field public static final enum d:Lio/teak/sdk/o$a;

.field public static final enum e:Lio/teak/sdk/o$a;

.field public static final enum f:Lio/teak/sdk/o$a;

.field private static final h:[[Lio/teak/sdk/o$a;

.field private static final synthetic i:[Lio/teak/sdk/o$a;


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

    .line 272
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Disabled"

    const-string v2, "Disabled"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    .line 273
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Allocated"

    const-string v2, "Allocated"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->b:Lio/teak/sdk/o$a;

    .line 274
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Created"

    const-string v2, "Created"

    invoke-direct {v0, v1, v6, v2}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->c:Lio/teak/sdk/o$a;

    .line 275
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Active"

    const-string v2, "Active"

    invoke-direct {v0, v1, v7, v2}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->d:Lio/teak/sdk/o$a;

    .line 276
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Paused"

    const-string v2, "Paused"

    invoke-direct {v0, v1, v8, v2}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->e:Lio/teak/sdk/o$a;

    .line 277
    new-instance v0, Lio/teak/sdk/o$a;

    const-string v1, "Destroyed"

    const/4 v2, 0x5

    const-string v3, "Destroyed"

    invoke-direct {v0, v1, v2, v3}, Lio/teak/sdk/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/o$a;->f:Lio/teak/sdk/o$a;

    .line 271
    const/4 v0, 0x6

    new-array v0, v0, [Lio/teak/sdk/o$a;

    sget-object v1, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/o$a;->b:Lio/teak/sdk/o$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/o$a;->c:Lio/teak/sdk/o$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/teak/sdk/o$a;->d:Lio/teak/sdk/o$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/teak/sdk/o$a;->e:Lio/teak/sdk/o$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/teak/sdk/o$a;->f:Lio/teak/sdk/o$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/o$a;->i:[Lio/teak/sdk/o$a;

    .line 281
    const/4 v0, 0x6

    new-array v0, v0, [[Lio/teak/sdk/o$a;

    new-array v1, v4, [Lio/teak/sdk/o$a;

    aput-object v1, v0, v4

    new-array v1, v5, [Lio/teak/sdk/o$a;

    sget-object v2, Lio/teak/sdk/o$a;->c:Lio/teak/sdk/o$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Lio/teak/sdk/o$a;

    sget-object v2, Lio/teak/sdk/o$a;->d:Lio/teak/sdk/o$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [Lio/teak/sdk/o$a;

    sget-object v2, Lio/teak/sdk/o$a;->e:Lio/teak/sdk/o$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v6, [Lio/teak/sdk/o$a;

    sget-object v2, Lio/teak/sdk/o$a;->f:Lio/teak/sdk/o$a;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/o$a;->d:Lio/teak/sdk/o$a;

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v4, [Lio/teak/sdk/o$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/o$a;->h:[[Lio/teak/sdk/o$a;

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
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    iput-object p3, p0, Lio/teak/sdk/o$a;->g:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/o$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    const-class v0, Lio/teak/sdk/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/o$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/o$a;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lio/teak/sdk/o$a;->i:[Lio/teak/sdk/o$a;

    invoke-virtual {v0}, [Lio/teak/sdk/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/o$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    sget-object v2, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    if-ne p1, v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    sget-object v2, Lio/teak/sdk/o$a;->h:[[Lio/teak/sdk/o$a;

    invoke-virtual {p0}, Lio/teak/sdk/o$a;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 299
    invoke-virtual {p1, v5}, Lio/teak/sdk/o$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 301
    goto :goto_0
.end method

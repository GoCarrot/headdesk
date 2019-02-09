.class public final enum Lio/teak/sdk/b/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/b/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/b/e$b;

.field public static final enum b:Lio/teak/sdk/b/e$b;

.field public static final enum c:Lio/teak/sdk/b/e$b;

.field public static final enum d:Lio/teak/sdk/b/e$b;

.field public static final enum e:Lio/teak/sdk/b/e$b;

.field public static final enum f:Lio/teak/sdk/b/e$b;

.field public static final enum g:Lio/teak/sdk/b/e$b;

.field public static final enum h:Lio/teak/sdk/b/e$b;

.field private static final j:[[Lio/teak/sdk/b/e$b;

.field private static final synthetic k:[Lio/teak/sdk/b/e$b;


# instance fields
.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Invalid"

    const-string v2, "Invalid"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->a:Lio/teak/sdk/b/e$b;

    .line 72
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Allocated"

    const-string v2, "Allocated"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->b:Lio/teak/sdk/b/e$b;

    .line 73
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Created"

    const-string v2, "Created"

    invoke-direct {v0, v1, v6, v2}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    .line 74
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Configured"

    const-string v2, "Configured"

    invoke-direct {v0, v1, v7, v2}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    .line 75
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "IdentifyingUser"

    const-string v2, "IdentifyingUser"

    invoke-direct {v0, v1, v8, v2}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    .line 76
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "UserIdentified"

    const/4 v2, 0x5

    const-string v3, "UserIdentified"

    invoke-direct {v0, v1, v2, v3}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    .line 77
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Expiring"

    const/4 v2, 0x6

    const-string v3, "Expiring"

    invoke-direct {v0, v1, v2, v3}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    .line 78
    new-instance v0, Lio/teak/sdk/b/e$b;

    const-string v1, "Expired"

    const/4 v2, 0x7

    const-string v3, "Expired"

    invoke-direct {v0, v1, v2, v3}, Lio/teak/sdk/b/e$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [Lio/teak/sdk/b/e$b;

    sget-object v1, Lio/teak/sdk/b/e$b;->a:Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/b/e$b;->b:Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v6

    sget-object v1, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v7

    sget-object v1, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/b/e$b;->k:[Lio/teak/sdk/b/e$b;

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [[Lio/teak/sdk/b/e$b;

    new-array v1, v4, [Lio/teak/sdk/b/e$b;

    aput-object v1, v0, v4

    new-array v1, v6, [Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v4

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [Lio/teak/sdk/b/e$b;

    sget-object v3, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Lio/teak/sdk/b/e$b;

    sget-object v3, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v4

    sget-object v3, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v5

    sget-object v3, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v6

    sget-object v3, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v7

    sget-object v3, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Lio/teak/sdk/b/e$b;

    aput-object v2, v0, v1

    sput-object v0, Lio/teak/sdk/b/e$b;->j:[[Lio/teak/sdk/b/e$b;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object p3, p0, Lio/teak/sdk/b/e$b;->i:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/b/e$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lio/teak/sdk/b/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/b/e$b;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/b/e$b;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/teak/sdk/b/e$b;->k:[Lio/teak/sdk/b/e$b;

    invoke-virtual {v0}, [Lio/teak/sdk/b/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/b/e$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e$b;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    sget-object v2, Lio/teak/sdk/b/e$b;->a:Lio/teak/sdk/b/e$b;

    if-ne p1, v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    sget-object v2, Lio/teak/sdk/b/e$b;->j:[[Lio/teak/sdk/b/e$b;

    invoke-virtual {p0}, Lio/teak/sdk/b/e$b;->ordinal()I

    move-result v3

    aget-object v3, v2, v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 102
    invoke-virtual {p1, v5}, Lio/teak/sdk/b/e$b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0
.end method

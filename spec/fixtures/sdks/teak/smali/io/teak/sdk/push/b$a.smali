.class public final enum Lio/teak/sdk/push/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/push/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/push/b$a;

.field public static final enum b:Lio/teak/sdk/push/b$a;

.field public static final enum c:Lio/teak/sdk/push/b$a;

.field private static final e:[[Lio/teak/sdk/push/b$a;

.field private static final synthetic f:[Lio/teak/sdk/push/b$a;


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lio/teak/sdk/push/b$a;

    const-string v1, "Unknown"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lio/teak/sdk/push/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/push/b$a;->a:Lio/teak/sdk/push/b$a;

    .line 36
    new-instance v0, Lio/teak/sdk/push/b$a;

    const-string v1, "Authorized"

    const-string v2, "authorized"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/push/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    .line 37
    new-instance v0, Lio/teak/sdk/push/b$a;

    const-string v1, "Denied"

    const-string v2, "denied"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/push/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    .line 34
    new-array v0, v6, [Lio/teak/sdk/push/b$a;

    sget-object v1, Lio/teak/sdk/push/b$a;->a:Lio/teak/sdk/push/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/push/b$a;->f:[Lio/teak/sdk/push/b$a;

    .line 41
    new-array v0, v6, [[Lio/teak/sdk/push/b$a;

    new-array v1, v5, [Lio/teak/sdk/push/b$a;

    sget-object v2, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v4, [Lio/teak/sdk/push/b$a;

    sget-object v2, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Lio/teak/sdk/push/b$a;

    sget-object v2, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/push/b$a;->e:[[Lio/teak/sdk/push/b$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lio/teak/sdk/push/b$a;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/push/b$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lio/teak/sdk/push/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/push/b$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/push/b$a;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lio/teak/sdk/push/b$a;->f:[Lio/teak/sdk/push/b$a;

    invoke-virtual {v0}, [Lio/teak/sdk/push/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/push/b$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/push/b$a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    sget-object v1, Lio/teak/sdk/push/b$a;->e:[[Lio/teak/sdk/push/b$a;

    invoke-virtual {p0}, Lio/teak/sdk/push/b$a;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 54
    invoke-virtual {p1, v4}, Lio/teak/sdk/push/b$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 56
    :cond_0
    return v0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

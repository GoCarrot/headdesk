.class public final enum Lio/teak/sdk/b/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/b/b$b;

.field public static final enum b:Lio/teak/sdk/b/b$b;

.field public static final enum c:Lio/teak/sdk/b/b$b;

.field private static final d:[[Lio/teak/sdk/b/b$b;

.field private static final synthetic e:[Lio/teak/sdk/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lio/teak/sdk/b/b$b;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v3, v2}, Lio/teak/sdk/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/b$b;->a:Lio/teak/sdk/b/b$b;

    .line 35
    new-instance v0, Lio/teak/sdk/b/b$b;

    const-string v1, "ScreenOn"

    const-string v2, "ScreenOn"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/b$b;->b:Lio/teak/sdk/b/b$b;

    .line 36
    new-instance v0, Lio/teak/sdk/b/b$b;

    const-string v1, "ScreenOff"

    const-string v2, "ScreenOff"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/b/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    .line 33
    new-array v0, v6, [Lio/teak/sdk/b/b$b;

    sget-object v1, Lio/teak/sdk/b/b$b;->a:Lio/teak/sdk/b/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lio/teak/sdk/b/b$b;->b:Lio/teak/sdk/b/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/b/b$b;->e:[Lio/teak/sdk/b/b$b;

    .line 40
    new-array v0, v6, [[Lio/teak/sdk/b/b$b;

    new-array v1, v5, [Lio/teak/sdk/b/b$b;

    sget-object v2, Lio/teak/sdk/b/b$b;->b:Lio/teak/sdk/b/b$b;

    aput-object v2, v1, v3

    sget-object v2, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v4, [Lio/teak/sdk/b/b$b;

    sget-object v2, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Lio/teak/sdk/b/b$b;

    sget-object v2, Lio/teak/sdk/b/b$b;->b:Lio/teak/sdk/b/b$b;

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/b/b$b;->d:[[Lio/teak/sdk/b/b$b;

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

    .line 50
    invoke-virtual {p0}, Lio/teak/sdk/b/b$b;->ordinal()I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/b/b$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lio/teak/sdk/b/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/b/b$b;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/b/b$b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lio/teak/sdk/b/b$b;->e:[Lio/teak/sdk/b/b$b;

    invoke-virtual {v0}, [Lio/teak/sdk/b/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/b/b$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/b$b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 54
    sget-object v1, Lio/teak/sdk/b/b$b;->d:[[Lio/teak/sdk/b/b$b;

    invoke-virtual {p0}, Lio/teak/sdk/b/b$b;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 55
    invoke-virtual {p1, v4}, Lio/teak/sdk/b/b$b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

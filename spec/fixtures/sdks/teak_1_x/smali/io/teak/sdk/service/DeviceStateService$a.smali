.class public final enum Lio/teak/sdk/service/DeviceStateService$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/service/DeviceStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/service/DeviceStateService$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/service/DeviceStateService$a;

.field public static final enum b:Lio/teak/sdk/service/DeviceStateService$a;

.field public static final enum c:Lio/teak/sdk/service/DeviceStateService$a;

.field private static final d:[[Lio/teak/sdk/service/DeviceStateService$a;

.field private static final synthetic e:[Lio/teak/sdk/service/DeviceStateService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lio/teak/sdk/service/DeviceStateService$a;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v3, v2}, Lio/teak/sdk/service/DeviceStateService$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/service/DeviceStateService$a;->a:Lio/teak/sdk/service/DeviceStateService$a;

    .line 54
    new-instance v0, Lio/teak/sdk/service/DeviceStateService$a;

    const-string v1, "ScreenOn"

    const-string v2, "ScreenOn"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/service/DeviceStateService$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    .line 55
    new-instance v0, Lio/teak/sdk/service/DeviceStateService$a;

    const-string v1, "ScreenOff"

    const-string v2, "ScreenOff"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/service/DeviceStateService$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    .line 52
    new-array v0, v6, [Lio/teak/sdk/service/DeviceStateService$a;

    sget-object v1, Lio/teak/sdk/service/DeviceStateService$a;->a:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/service/DeviceStateService$a;->e:[Lio/teak/sdk/service/DeviceStateService$a;

    .line 59
    new-array v0, v6, [[Lio/teak/sdk/service/DeviceStateService$a;

    new-array v1, v5, [Lio/teak/sdk/service/DeviceStateService$a;

    sget-object v2, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v2, v1, v3

    sget-object v2, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v4, [Lio/teak/sdk/service/DeviceStateService$a;

    sget-object v2, Lio/teak/sdk/service/DeviceStateService$a;->c:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [Lio/teak/sdk/service/DeviceStateService$a;

    sget-object v2, Lio/teak/sdk/service/DeviceStateService$a;->b:Lio/teak/sdk/service/DeviceStateService$a;

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    sput-object v0, Lio/teak/sdk/service/DeviceStateService$a;->d:[[Lio/teak/sdk/service/DeviceStateService$a;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p0}, Lio/teak/sdk/service/DeviceStateService$a;->ordinal()I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/service/DeviceStateService$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lio/teak/sdk/service/DeviceStateService$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/service/DeviceStateService$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/service/DeviceStateService$a;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lio/teak/sdk/service/DeviceStateService$a;->e:[Lio/teak/sdk/service/DeviceStateService$a;

    invoke-virtual {v0}, [Lio/teak/sdk/service/DeviceStateService$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/service/DeviceStateService$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lio/teak/sdk/service/DeviceStateService$a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 73
    sget-object v1, Lio/teak/sdk/service/DeviceStateService$a;->d:[[Lio/teak/sdk/service/DeviceStateService$a;

    invoke-virtual {p0}, Lio/teak/sdk/service/DeviceStateService$a;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 74
    invoke-virtual {p1, v4}, Lio/teak/sdk/service/DeviceStateService$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.class public final enum Lio/teak/sdk/wrapper/air/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/wrapper/air/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/wrapper/air/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/wrapper/air/k$a;

.field public static final enum b:Lio/teak/sdk/wrapper/air/k$a;

.field public static final enum c:Lio/teak/sdk/wrapper/air/k$a;

.field public static final enum d:Lio/teak/sdk/wrapper/air/k$a;

.field private static final synthetic f:[Lio/teak/sdk/wrapper/air/k$a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lio/teak/sdk/wrapper/air/k$a;

    const-string v1, "Schedule"

    const-string v2, "NOTIFICATION_SCHEDULED"

    invoke-direct {v0, v1, v3, v2}, Lio/teak/sdk/wrapper/air/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/wrapper/air/k$a;->a:Lio/teak/sdk/wrapper/air/k$a;

    .line 16
    new-instance v0, Lio/teak/sdk/wrapper/air/k$a;

    const-string v1, "ScheduleLongDistance"

    const-string v2, "LONG_DISTANCE_NOTIFICATION_SCHEDULED"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/wrapper/air/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/wrapper/air/k$a;->b:Lio/teak/sdk/wrapper/air/k$a;

    .line 17
    new-instance v0, Lio/teak/sdk/wrapper/air/k$a;

    const-string v1, "Cancel"

    const-string v2, "NOTIFICATION_CANCELED"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/wrapper/air/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/wrapper/air/k$a;->c:Lio/teak/sdk/wrapper/air/k$a;

    .line 18
    new-instance v0, Lio/teak/sdk/wrapper/air/k$a;

    const-string v1, "CancelAll"

    const-string v2, "NOTIFICATION_CANCEL_ALL"

    invoke-direct {v0, v1, v6, v2}, Lio/teak/sdk/wrapper/air/k$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/wrapper/air/k$a;->d:Lio/teak/sdk/wrapper/air/k$a;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lio/teak/sdk/wrapper/air/k$a;

    sget-object v1, Lio/teak/sdk/wrapper/air/k$a;->a:Lio/teak/sdk/wrapper/air/k$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/teak/sdk/wrapper/air/k$a;->b:Lio/teak/sdk/wrapper/air/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/wrapper/air/k$a;->c:Lio/teak/sdk/wrapper/air/k$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/wrapper/air/k$a;->d:Lio/teak/sdk/wrapper/air/k$a;

    aput-object v1, v0, v6

    sput-object v0, Lio/teak/sdk/wrapper/air/k$a;->f:[Lio/teak/sdk/wrapper/air/k$a;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lio/teak/sdk/wrapper/air/k$a;->e:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/wrapper/air/k$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lio/teak/sdk/wrapper/air/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/wrapper/air/k$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/wrapper/air/k$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lio/teak/sdk/wrapper/air/k$a;->f:[Lio/teak/sdk/wrapper/air/k$a;

    invoke-virtual {v0}, [Lio/teak/sdk/wrapper/air/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/wrapper/air/k$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lio/teak/sdk/wrapper/air/k$a;->e:Ljava/lang/String;

    return-object v0
.end method

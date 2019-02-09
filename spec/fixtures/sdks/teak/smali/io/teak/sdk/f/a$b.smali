.class final enum Lio/teak/sdk/f/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/f/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/f/a$b;

.field private static enum b:Lio/teak/sdk/f/a$b;

.field private static enum c:Lio/teak/sdk/f/a$b;

.field private static enum d:Lio/teak/sdk/f/a$b;

.field private static enum e:Lio/teak/sdk/f/a$b;

.field private static final synthetic g:[Lio/teak/sdk/f/a$b;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lio/teak/sdk/f/a$b;

    const-string v1, "FATAL"

    const-string v2, "fatal"

    invoke-direct {v0, v1, v3, v2}, Lio/teak/sdk/f/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/f/a$b;->b:Lio/teak/sdk/f/a$b;

    .line 48
    new-instance v0, Lio/teak/sdk/f/a$b;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v4, v2}, Lio/teak/sdk/f/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/f/a$b;->a:Lio/teak/sdk/f/a$b;

    .line 49
    new-instance v0, Lio/teak/sdk/f/a$b;

    const-string v1, "WARNING"

    const-string v2, "warning"

    invoke-direct {v0, v1, v5, v2}, Lio/teak/sdk/f/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/f/a$b;->c:Lio/teak/sdk/f/a$b;

    .line 50
    new-instance v0, Lio/teak/sdk/f/a$b;

    const-string v1, "INFO"

    const-string v2, "info"

    invoke-direct {v0, v1, v6, v2}, Lio/teak/sdk/f/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/f/a$b;->d:Lio/teak/sdk/f/a$b;

    .line 51
    new-instance v0, Lio/teak/sdk/f/a$b;

    const-string v1, "DEBUG"

    const-string v2, "debug"

    invoke-direct {v0, v1, v7, v2}, Lio/teak/sdk/f/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/f/a$b;->e:Lio/teak/sdk/f/a$b;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lio/teak/sdk/f/a$b;

    sget-object v1, Lio/teak/sdk/f/a$b;->b:Lio/teak/sdk/f/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lio/teak/sdk/f/a$b;->a:Lio/teak/sdk/f/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/f/a$b;->c:Lio/teak/sdk/f/a$b;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/f/a$b;->d:Lio/teak/sdk/f/a$b;

    aput-object v1, v0, v6

    sget-object v1, Lio/teak/sdk/f/a$b;->e:Lio/teak/sdk/f/a$b;

    aput-object v1, v0, v7

    sput-object v0, Lio/teak/sdk/f/a$b;->g:[Lio/teak/sdk/f/a$b;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lio/teak/sdk/f/a$b;->f:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/f/a$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lio/teak/sdk/f/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/f/a$b;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/f/a$b;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lio/teak/sdk/f/a$b;->g:[Lio/teak/sdk/f/a$b;

    invoke-virtual {v0}, [Lio/teak/sdk/f/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/f/a$b;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/teak/sdk/f/a$b;->f:Ljava/lang/String;

    return-object v0
.end method

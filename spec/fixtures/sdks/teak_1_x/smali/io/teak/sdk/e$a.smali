.class final enum Lio/teak/sdk/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/teak/sdk/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/teak/sdk/e$a;

.field public static final enum b:Lio/teak/sdk/e$a;

.field public static final enum c:Lio/teak/sdk/e$a;

.field private static enum f:Lio/teak/sdk/e$a;

.field private static final synthetic g:[Lio/teak/sdk/e$a;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 65
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Verbose"

    const-string v2, "VERBOSE"

    invoke-direct {v0, v1, v5, v2, v4}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/e$a;->f:Lio/teak/sdk/e$a;

    .line 66
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Info"

    const-string v2, "INFO"

    invoke-direct {v0, v1, v6, v2, v8}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    .line 67
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Warn"

    const-string v2, "WARN"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/e$a;->b:Lio/teak/sdk/e$a;

    .line 68
    new-instance v0, Lio/teak/sdk/e$a;

    const-string v1, "Error"

    const-string v2, "ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v7, v2, v3}, Lio/teak/sdk/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    .line 64
    new-array v0, v8, [Lio/teak/sdk/e$a;

    sget-object v1, Lio/teak/sdk/e$a;->f:Lio/teak/sdk/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/teak/sdk/e$a;->a:Lio/teak/sdk/e$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/teak/sdk/e$a;->b:Lio/teak/sdk/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/teak/sdk/e$a;->c:Lio/teak/sdk/e$a;

    aput-object v1, v0, v7

    sput-object v0, Lio/teak/sdk/e$a;->g:[Lio/teak/sdk/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lio/teak/sdk/e$a;->d:Ljava/lang/String;

    .line 75
    iput p4, p0, Lio/teak/sdk/e$a;->e:I

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/teak/sdk/e$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lio/teak/sdk/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/e$a;

    return-object v0
.end method

.method public static values()[Lio/teak/sdk/e$a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/teak/sdk/e$a;->g:[Lio/teak/sdk/e$a;

    invoke-virtual {v0}, [Lio/teak/sdk/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/teak/sdk/e$a;

    return-object v0
.end method

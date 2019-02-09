.class public final Lio/teak/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(IJJLjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p6, p0, Lio/teak/sdk/m;->a:Ljava/util/concurrent/Callable;

    .line 18
    iput p1, p0, Lio/teak/sdk/m;->b:I

    .line 19
    iput-wide p2, p0, Lio/teak/sdk/m;->c:J

    .line 20
    iput-wide p4, p0, Lio/teak/sdk/m;->d:J

    .line 21
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/Callable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    const/16 v1, 0xa

    const-wide/16 v2, 0x1b58

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/m;-><init>(IJJLjava/util/concurrent/Callable;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    iget v2, p0, Lio/teak/sdk/m;->b:I

    .line 25
    iget-wide v0, p0, Lio/teak/sdk/m;->c:J

    move-wide v5, v0

    move v1, v2

    move-wide v2, v5

    .line 28
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/m;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    :goto_1
    throw v0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    add-int/lit8 v4, v1, -0x1

    .line 33
    if-nez v4, :cond_0

    throw v0

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 35
    :cond_1
    iget-wide v0, p0, Lio/teak/sdk/m;->d:J

    mul-long/2addr v0, v2

    move-wide v2, v0

    move v1, v4

    .line 36
    goto :goto_0

    .line 29
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

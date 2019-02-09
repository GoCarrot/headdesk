.class final Lio/teak/sdk/b/d$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1759
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1760
    sget-object v0, Lio/teak/sdk/InstallReferrerReceiver;->installReferrerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1761
    :cond_0
    if-nez v0, :cond_1

    .line 1762
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1763
    sget-object v0, Lio/teak/sdk/InstallReferrerReceiver;->installReferrerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1764
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 1765
    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 1767
    :cond_1
    if-eqz v0, :cond_2

    .line 1768
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "session.attribution"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "install_referrer"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 756
    :cond_2
    return-object v0
.end method

.class final Lio/teak/sdk/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lio/teak/sdk/b/g;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/g;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    iput-object p2, p0, Lio/teak/sdk/b/g$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lio/teak/sdk/b/g$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lio/teak/sdk/b/g$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    .line 89
    :try_start_0
    iget-object v2, p0, Lio/teak/sdk/b/g$1;->a:Ljava/lang/Object;

    iget-object v3, p0, Lio/teak/sdk/b/g$1;->b:Ljava/util/Map;

    iget-object v4, p0, Lio/teak/sdk/b/g$1;->c:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 93
    :goto_0
    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    invoke-static {v0}, Lio/teak/sdk/b/g;->a(Lio/teak/sdk/b/g;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    invoke-static {v0}, Lio/teak/sdk/b/g;->a(Lio/teak/sdk/b/g;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/b/g$1;->b:Ljava/util/Map;

    iget-object v1, p0, Lio/teak/sdk/b/g$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/b/g$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    sget-object v1, Lio/teak/sdk/b/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    iget-object v3, p0, Lio/teak/sdk/b/g$1;->d:Lio/teak/sdk/b/g;

    .line 102
    invoke-static {v3}, Lio/teak/sdk/b/g;->b(Lio/teak/sdk/b/g;)Lio/teak/sdk/l$a;

    move-result-object v3

    iget v3, v3, Lio/teak/sdk/l$a;->b:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 101
    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-static {v0, v1}, Lio/teak/sdk/b/g;->a(Lio/teak/sdk/b/g;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 104
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 89
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.class abstract Lio/teak/sdk/l$c;
.super Lio/teak/sdk/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/teak/sdk/l$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/b/e;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;Z)V

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/l$c;->g:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/l$c;->e:Ljava/util/List;

    .line 154
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lio/teak/sdk/l;->a(ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/teak/sdk/l$c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/l$e;

    .line 187
    invoke-interface {v0, p2}, Lio/teak/sdk/l$e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/l$e;)Z
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/teak/sdk/l$e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/teak/sdk/l$e;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 157
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/teak/sdk/l$c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 161
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/teak/sdk/l$c;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/teak/sdk/l$c;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    sget-object v1, Lio/teak/sdk/l$c;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 166
    :cond_2
    :try_start_2
    iget-object v1, p0, Lio/teak/sdk/l$c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lio/teak/sdk/l$c;->c:Lio/teak/sdk/l$a;

    iget-wide v4, v1, Lio/teak/sdk/l$a;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lio/teak/sdk/l$c;->c:Lio/teak/sdk/l$a;

    iget v1, v1, Lio/teak/sdk/l$a;->b:F

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_0

    .line 170
    if-eqz p3, :cond_3

    .line 171
    iget-object v0, p0, Lio/teak/sdk/l$c;->g:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_3
    iget-object v0, p0, Lio/teak/sdk/l$c;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lio/teak/sdk/l$c;->c:Lio/teak/sdk/l$a;

    iget v0, v0, Lio/teak/sdk/l$a;->b:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_4

    .line 176
    sget-object v0, Lio/teak/sdk/l;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_4
    sget-object v0, Lio/teak/sdk/l;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/teak/sdk/l$c;->c:Lio/teak/sdk/l$a;

    iget v1, v1, Lio/teak/sdk/l$a;->b:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/l$c;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

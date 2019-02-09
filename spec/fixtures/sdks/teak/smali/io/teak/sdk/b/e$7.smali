.class final Lio/teak/sdk/b/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/e;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/n;

.field final synthetic b:Lio/teak/sdk/b/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e;Lio/teak/sdk/n;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    iput-object p2, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    iget-object v2, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v2}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lio/teak/sdk/b/d;->lock()V

    .line 362
    :try_start_0
    iget-object v2, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v2}, Lio/teak/sdk/b/e;->e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;

    move-result-object v2

    sget-object v3, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    sget-object v3, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    invoke-static {v2, v3}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 464
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 465
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 368
    iget-object v2, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v2}, Lio/teak/sdk/b/e;->e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;

    move-result-object v2

    sget-object v3, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-ne v2, v3, :cond_1

    .line 369
    const-string v2, "do_not_track_event"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_1
    const-string v3, "notifications_enabled"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v2, v5, :cond_6

    .line 374
    invoke-static {}, Lio/teak/sdk/Teak;->getNotificationStatus()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 373
    :goto_2
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    .line 378
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 381
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 382
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#0.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 383
    const-string v3, "timezone"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    const-string v5, "locale"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v5, "android_limit_ad_tracking"

    iget-object v6, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v6, v6, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    invoke-virtual {v6}, Lio/teak/sdk/a/b;->b()Z

    move-result v6

    if-nez v6, :cond_7

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    .line 390
    invoke-virtual {v0}, Lio/teak/sdk/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    const-string v0, "android_ad_id"

    iget-object v1, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v1, v1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v1, v1, Lio/teak/sdk/a/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :goto_4
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->f(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    .line 397
    invoke-virtual {v0}, Lio/teak/sdk/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    const-string v0, "access_token"

    iget-object v1, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v1}, Lio/teak/sdk/b/e;->f(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 402
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->g(Lio/teak/sdk/b/e;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_9

    .line 404
    :try_start_2
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->g(Lio/teak/sdk/b/e;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    :goto_5
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 410
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    .line 411
    invoke-virtual {v0}, Lio/teak/sdk/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v0, v0, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v0, v0, Lio/teak/sdk/a/d;->a:Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 413
    invoke-static {}, Lio/teak/sdk/push/b;->a()Lio/teak/sdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/push/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 416
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "session.identify_user"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "userId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v7}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "timezone"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v2, 0x4

    const-string v6, "locale"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    aput-object v3, v5, v2

    const/4 v2, 0x6

    const-string v3, "session_id"

    aput-object v3, v5, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v3}, Lio/teak/sdk/b/e;->h(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/games/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/teak/sdk/b/e$7;->a:Lio/teak/sdk/n;

    iget-object v1, v1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v1, v1, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/users.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    new-instance v2, Lio/teak/sdk/b/e$7$1;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/e$7$1;-><init>(Lio/teak/sdk/b/e$7;)V

    invoke-static {v0, v4, v1, v2}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    iget-object v0, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    .line 374
    goto/16 :goto_1

    :cond_6
    :try_start_4
    const-string v2, "unknown"

    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 388
    goto/16 :goto_3

    .line 393
    :cond_8
    const-string v0, "android_ad_id"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 464
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/e$7;->b:Lio/teak/sdk/b/e;

    invoke-static {v1}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 465
    throw v0

    :catch_0
    move-exception v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_5
.end method

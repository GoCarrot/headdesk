.class final Lio/teak/sdk/b/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/m;

.field final synthetic b:Lio/teak/sdk/b/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d;Lio/teak/sdk/m;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    iput-object p2, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    iget-object v2, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v2}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lio/teak/sdk/b/c;->lock()V

    .line 359
    :try_start_0
    iget-object v2, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v2}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v2

    sget-object v3, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    sget-object v3, Lio/teak/sdk/b/d$b;->e:Lio/teak/sdk/b/d$b;

    invoke-static {v2, v3}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 454
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 455
    :goto_0
    return-void

    .line 363
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 365
    iget-object v3, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v3}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v3

    sget-object v4, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-ne v3, v4, :cond_1

    .line 366
    const-string v3, "do_not_track_event"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_1
    const-string v3, "notifications_enabled"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_7

    invoke-static {}, Lio/teak/sdk/Teak;->userHasDisabledNotifications()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 373
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    .line 374
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 377
    :cond_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 378
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 379
    const-string v0, "timezone"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    const-string v0, "locale"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v0, v0, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v0, v0, Lio/teak/sdk/a/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 385
    const-string v0, "android_ad_id"

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v1, v1, Lio/teak/sdk/a/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v0, "android_limit_ad_tracking"

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-boolean v1, v1, Lio/teak/sdk/a/c;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_3
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->f(Lio/teak/sdk/b/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 390
    const-string v0, "access_token"

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->f(Lio/teak/sdk/b/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->g(Lio/teak/sdk/b/d;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_8

    .line 396
    :try_start_2
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->g(Lio/teak/sdk/b/d;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_3
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 402
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v0, v0, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v0, v0, Lio/teak/sdk/a/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v0, v0, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    iget-object v0, v0, Lio/teak/sdk/a/c;->a:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 406
    :cond_5
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "session.identify_user"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "userId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v7}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "timezone"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v3, 0x4

    const-string v6, "locale"

    aput-object v6, v5, v3

    const/4 v3, 0x5

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "session_id"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v4}, Lio/teak/sdk/b/d;->h(Lio/teak/sdk/b/d;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/games/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->a:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v1, v1, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/users.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    new-instance v3, Lio/teak/sdk/b/d$7$1;

    invoke-direct {v3, p0}, Lio/teak/sdk/b/d$7$1;-><init>(Lio/teak/sdk/b/d$7;)V

    invoke-static {v0, v2, v1, v3}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    iget-object v0, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 370
    goto/16 :goto_1

    :cond_7
    :try_start_4
    const-string v0, "unknown"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :cond_8
    move-object v0, v1

    goto/16 :goto_3

    .line 454
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d$7;->b:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method

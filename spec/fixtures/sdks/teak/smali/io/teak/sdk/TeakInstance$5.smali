.class final Lio/teak/sdk/TeakInstance$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/TeakInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakInstance;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v3}, Lio/teak/sdk/TeakInstance;->access$200(Lio/teak/sdk/TeakInstance;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    sget-object v3, Lio/teak/sdk/TeakInstance$a;->c:Lio/teak/sdk/TeakInstance$a;

    invoke-static {v2, v3}, Lio/teak/sdk/TeakInstance;->access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "lifecycle"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "callback"

    aput-object v5, v4, v1

    const-string v5, "onActivityCreated"

    aput-object v5, v4, v0

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 353
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 358
    :try_start_0
    const-string v3, "android.net.http.HttpResponseCache"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstalled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 359
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 360
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_3

    .line 364
    :goto_0
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v1

    .line 365
    if-nez v0, :cond_4

    iget-object v1, v1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-boolean v1, v1, Lio/teak/sdk/a/a;->k:Z

    if-eqz v1, :cond_4

    .line 368
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "http"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    const-string v1, "android.net.http.HttpResponseCache"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "install"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/io/File;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 370
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-wide/32 v6, 0x1400000

    .line 371
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "cache"

    const-string v3, "enabled"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :goto_1
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->objectFactory:Lio/teak/sdk/d;

    invoke-interface {v1}, Lio/teak/sdk/d;->a()Lio/teak/sdk/h/c;

    move-result-object v1

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$402(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/h/c;)Lio/teak/sdk/h/c;

    .line 383
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$400(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$400(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/h/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/teak/sdk/h/c;->a(Landroid/content/Context;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    new-instance v1, Lio/teak/sdk/b;

    invoke-direct {v1, v2}, Lio/teak/sdk/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$502(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/b;)Lio/teak/sdk/b;

    .line 390
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 391
    if-nez v0, :cond_1

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    :cond_1
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v3, "LifecycleEvent.Created"

    invoke-direct {v1, v3, v0, v2}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 396
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0, p1}, Lio/teak/sdk/TeakInstance;->access$600(Lio/teak/sdk/TeakInstance;Landroid/app/Activity;)V

    .line 397
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z

    .line 403
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 360
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 375
    :cond_4
    if-eqz v0, :cond_5

    .line 376
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "cache"

    const-string v3, "previously_enabled"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    :cond_5
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "cache"

    const-string v3, "disabled"

    invoke-virtual {v0, v1, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :cond_6
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$700(Lio/teak/sdk/TeakInstance;)V

    goto :goto_2

    .line 374
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v1}, Lio/teak/sdk/TeakInstance;->access$200(Lio/teak/sdk/TeakInstance;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->f:Lio/teak/sdk/TeakInstance$a;

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "lifecycle"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "callback"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "onActivityDestroyed"

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v1}, Lio/teak/sdk/TeakInstance;->access$200(Lio/teak/sdk/TeakInstance;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    sget-object v1, Lio/teak/sdk/TeakInstance$a;->e:Lio/teak/sdk/TeakInstance$a;

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "lifecycle"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "callback"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "onActivityPaused"

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 443
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    :cond_0
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v2, "LifecycleEvent.Paused"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 449
    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v3, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v3}, Lio/teak/sdk/TeakInstance;->access$200(Lio/teak/sdk/TeakInstance;)I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lio/teak/sdk/TeakInstance$5;->a:Lio/teak/sdk/TeakInstance;

    sget-object v3, Lio/teak/sdk/TeakInstance$a;->d:Lio/teak/sdk/TeakInstance$a;

    invoke-static {v0, v3}, Lio/teak/sdk/TeakInstance;->access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "lifecycle"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "callback"

    aput-object v5, v4, v2

    const-string v5, "onActivityResumed"

    aput-object v5, v4, v1

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 409
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    :cond_0
    :try_start_0
    const-string v3, "io.teak.sdk.Preferences"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 419
    if-eqz v3, :cond_2

    .line 420
    const-string v4, "io.teak.sdk.Preferences.FirstRun"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 421
    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 422
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 423
    const-string v6, "io.teak.sdk.Preferences"

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :try_start_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 425
    const-string v7, "io.teak.sdk.Preferences.FirstRun"

    invoke-interface {v3, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    :goto_0
    const-string v2, "teakIsFirstLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v2, "LifecycleEvent.Resumed"

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 437
    :cond_1
    return-void

    .line 427
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

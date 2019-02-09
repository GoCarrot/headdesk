.class final Lio/teak/sdk/o$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/o;


# direct methods
.method constructor <init>(Lio/teak/sdk/o;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->c(Lio/teak/sdk/o;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    sget-object v1, Lio/teak/sdk/o$a;->c:Lio/teak/sdk/o$a;

    invoke-static {v0, v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "lifecycle"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "callback"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "onActivityCreated"

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 373
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    iget-object v2, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    iget-object v2, v2, Lio/teak/sdk/o;->a:Lio/teak/sdk/c;

    invoke-interface {v2}, Lio/teak/sdk/c;->a()Lio/teak/sdk/g/c;

    move-result-object v2

    invoke-static {v1, v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/g/c;)Lio/teak/sdk/g/c;

    .line 377
    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->d(Lio/teak/sdk/o;)Lio/teak/sdk/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->d(Lio/teak/sdk/o;)Lio/teak/sdk/g/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/teak/sdk/g/c;->a(Landroid/content/Context;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    new-instance v2, Lio/teak/sdk/b;

    invoke-direct {v2, v0}, Lio/teak/sdk/b;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/b;)Lio/teak/sdk/b;

    .line 384
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    if-nez v0, :cond_1

    .line 386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    :cond_1
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v2, "LifecycleEvent.Created"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v0, p1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Landroid/app/Activity;)V

    .line 391
    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    sget-object v1, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    invoke-static {v0, v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z

    .line 397
    :cond_2
    :goto_0
    return-void

    .line 394
    :cond_3
    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v0}, Lio/teak/sdk/o;->e(Lio/teak/sdk/o;)V

    goto :goto_0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->c(Lio/teak/sdk/o;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    sget-object v1, Lio/teak/sdk/o$a;->f:Lio/teak/sdk/o$a;

    invoke-static {v0, v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->c(Lio/teak/sdk/o;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    sget-object v1, Lio/teak/sdk/o$a;->e:Lio/teak/sdk/o$a;

    invoke-static {v0, v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 435
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 436
    if-nez v0, :cond_0

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    :cond_0
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v2, "LifecycleEvent.Paused"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 441
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

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v3, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    invoke-static {v3}, Lio/teak/sdk/o;->c(Lio/teak/sdk/o;)I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lio/teak/sdk/o$5;->a:Lio/teak/sdk/o;

    sget-object v3, Lio/teak/sdk/o$a;->d:Lio/teak/sdk/o$a;

    invoke-static {v0, v3}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "lifecycle"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "callback"

    aput-object v5, v4, v2

    const-string v5, "onActivityResumed"

    aput-object v5, v4, v1

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 403
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 412
    :cond_0
    :try_start_0
    const-string v3, "io.teak.sdk.Preferences"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 413
    if-eqz v3, :cond_2

    .line 414
    const-string v4, "io.teak.sdk.Preferences.FirstRun"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 415
    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 416
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 417
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 418
    const-string v6, "io.teak.sdk.Preferences.FirstRun"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    const-string v2, "teakIsFirstLaunch"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    new-instance v1, Lio/teak/sdk/c/e;

    const-string v2, "LifecycleEvent.Resumed"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/e;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 429
    :cond_1
    return-void

    :catch_0
    move-exception v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

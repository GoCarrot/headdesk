.class final Lio/teak/sdk/TeakInstance$7$1;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance$7;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance$7;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 5

    .prologue
    .line 492
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v3

    .line 496
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0}, Lio/teak/sdk/e/c;-><init>()V

    .line 497
    const-string v1, "user_id"

    invoke-virtual {p1}, Lio/teak/sdk/b/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 498
    const-string v1, "device_id"

    iget-object v2, v3, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    iget-object v2, v2, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 499
    const-string v1, "response"

    .line 500
    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "teak:///callback?"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    iget-object v0, v3, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->h:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 513
    const-string v4, "io.teak.app.Teak"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, v3, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v0, v0, Lio/teak/sdk/a/a;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :cond_1
    :goto_1
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string v2, "error"

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v4, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    .line 519
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

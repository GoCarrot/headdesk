.class final Lio/teak/sdk/b/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/concurrent/Future;

.field private synthetic c:Lio/teak/sdk/m;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/String;Lio/teak/sdk/m;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lio/teak/sdk/b/d$3;->b:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lio/teak/sdk/b/d$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/b/d$3;->c:Lio/teak/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 841
    :try_start_0
    sget-object v0, Lio/teak/sdk/Teak;->waitForDeepLink:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 842
    sget-object v0, Lio/teak/sdk/Teak;->waitForDeepLink:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 849
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/d$3;->b:Ljava/util/concurrent/Future;

    const-wide/16 v6, 0xf

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 850
    const-string v1, "deep_link"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 851
    if-nez v1, :cond_1

    move-object v5, v4

    .line 854
    :goto_1
    if-eqz v5, :cond_5

    invoke-static {v5}, Lio/teak/sdk/b/a;->a(Ljava/net/URI;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lio/teak/sdk/b/d$3;->a:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 857
    new-instance v6, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v6, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 858
    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 859
    iget-object v1, p0, Lio/teak/sdk/b/d$3;->c:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v1, v1, Lio/teak/sdk/a/a;->g:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 861
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 862
    iget-object v9, p0, Lio/teak/sdk/b/d$3;->c:Lio/teak/sdk/m;

    iget-object v9, v9, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v9, v9, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    and-int/2addr v1, v5

    move v5, v1

    .line 863
    goto :goto_2

    .line 851
    :cond_1
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 902
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v3

    .line 862
    goto :goto_3

    .line 864
    :cond_4
    :try_start_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz v5, :cond_5

    .line 865
    iget-object v1, p0, Lio/teak/sdk/b/d$3;->c:Lio/teak/sdk/m;

    iget-object v1, v1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v1, v1, Lio/teak/sdk/a/a;->h:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 870
    :cond_5
    const-string v1, "teak_reward_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "teak_reward_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    :goto_5
    if-eqz v0, :cond_2

    .line 872
    invoke-static {v0}, Lio/teak/sdk/TeakNotification$a;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 873
    if-eqz v1, :cond_2

    .line 874
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/teak/sdk/b/d$3$1;

    invoke-direct {v3, p0, v1, v0}, Lio/teak/sdk/b/d$3$1;-><init>(Lio/teak/sdk/b/d$3;Ljava/util/concurrent/Future;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 896
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_6
    move-object v0, v4

    .line 870
    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

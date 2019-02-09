.class final Lio/teak/sdk/b/d$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/d$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/Future;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lio/teak/sdk/b/d$3;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d$3;Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lio/teak/sdk/b/d$3$1;->c:Lio/teak/sdk/b/d$3;

    iput-object p2, p0, Lio/teak/sdk/b/d$3$1;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lio/teak/sdk/b/d$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 878
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d$3$1;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/TeakNotification$a;

    .line 879
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, v0, Lio/teak/sdk/TeakNotification$a;->a:Lio/teak/sdk/e/c;

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 882
    const-string v0, "teakNotifId"

    iget-object v2, p0, Lio/teak/sdk/b/d$3$1;->c:Lio/teak/sdk/b/d$3;

    iget-object v2, v2, Lio/teak/sdk/b/d$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v0, "incentivized"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v0, "teakRewardId"

    iget-object v2, p0, Lio/teak/sdk/b/d$3$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v0, "teakScheduleName"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v0, "teakCreativeName"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string v2, "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    const-string v2, "reward"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 890
    new-instance v1, Lio/teak/sdk/c/c;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/c;-><init>(Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class final Lio/teak/sdk/wrapper/TeakInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/wrapper/TeakInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/wrapper/TeakInterface;


# direct methods
.method constructor <init>(Lio/teak/sdk/wrapper/TeakInterface;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/teak/sdk/wrapper/TeakInterface$2;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-string v1, "{}"

    .line 70
    :try_start_0
    const-string v2, "eventData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 71
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 75
    iget-object v1, p0, Lio/teak/sdk/wrapper/TeakInterface$2;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-static {v1}, Lio/teak/sdk/wrapper/TeakInterface;->a(Lio/teak/sdk/wrapper/TeakInterface;)Lio/teak/sdk/wrapper/a;

    move-result-object v1

    sget v2, Lio/teak/sdk/wrapper/a$a;->a:I

    invoke-interface {v1, v2, v0}, Lio/teak/sdk/wrapper/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    iget-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface$2;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-static {v0}, Lio/teak/sdk/wrapper/TeakInterface;->a(Lio/teak/sdk/wrapper/TeakInterface;)Lio/teak/sdk/wrapper/a;

    move-result-object v0

    sget v2, Lio/teak/sdk/wrapper/a$a;->a:I

    invoke-interface {v0, v2, v1}, Lio/teak/sdk/wrapper/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/teak/sdk/wrapper/TeakInterface$2;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-static {v2}, Lio/teak/sdk/wrapper/TeakInterface;->a(Lio/teak/sdk/wrapper/TeakInterface;)Lio/teak/sdk/wrapper/a;

    move-result-object v2

    sget v3, Lio/teak/sdk/wrapper/a$a;->a:I

    invoke-interface {v2, v3, v1}, Lio/teak/sdk/wrapper/a;->a(ILjava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    const-string v2, "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :try_start_2
    const-string v1, "reward"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 82
    new-instance v1, Lio/teak/sdk/e/c;

    invoke-direct {v1, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lio/teak/sdk/wrapper/TeakInterface$2;->a:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-static {v1}, Lio/teak/sdk/wrapper/TeakInterface;->a(Lio/teak/sdk/wrapper/TeakInterface;)Lio/teak/sdk/wrapper/a;

    move-result-object v1

    sget v2, Lio/teak/sdk/wrapper/a$a;->b:I

    invoke-interface {v1, v2, v0}, Lio/teak/sdk/wrapper/a;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

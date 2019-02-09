.class final Lio/teak/sdk/b/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/f;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/f;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 11
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    iget-object v6, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 258
    :cond_1
    :goto_1
    return-void

    .line 82
    :sswitch_0
    const-string v7, "ExternalBroadcastEvent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v7, "LifecycleEvent.Resumed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v7, "TrackEventEvent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_3
    const-string v7, "PurchaseEvent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    const-string v7, "PurchaseFailedEvent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v5

    goto :goto_0

    :sswitch_5
    const-string v7, "PushNotificationEvent.Received"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v7, "PushNotificationEvent.Interaction"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 84
    :pswitch_0
    check-cast p1, Lio/teak/sdk/c/c;

    iget-object v0, p1, Lio/teak/sdk/c/c;->b:Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v1, v0}, Lio/teak/sdk/b/f;->a(Lio/teak/sdk/b/f;Landroid/content/Intent;)V

    goto :goto_1

    .line 89
    :pswitch_1
    check-cast p1, Lio/teak/sdk/c/e;

    iget-object v0, p1, Lio/teak/sdk/c/e;->b:Landroid/content/Intent;

    .line 90
    const-string v1, "teakProcessedForPush"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    const-string v1, "teakProcessedForPush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v1, v0}, Lio/teak/sdk/b/f;->b(Lio/teak/sdk/b/f;Landroid/content/Intent;)V

    goto :goto_1

    .line 97
    :pswitch_2
    check-cast p1, Lio/teak/sdk/c/n;

    iget-object v0, p1, Lio/teak/sdk/c/n;->b:Ljava/util/Map;

    .line 99
    iget-object v1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v1}, Lio/teak/sdk/b/f;->a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/teak/sdk/b/f$1$1;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/b/f$1$1;-><init>(Lio/teak/sdk/b/f$1;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 113
    :pswitch_3
    check-cast p1, Lio/teak/sdk/c/h;

    iget-object v0, p1, Lio/teak/sdk/c/h;->b:Ljava/util/Map;

    .line 114
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "purchase.succeeded"

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    iget-object v1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v1}, Lio/teak/sdk/b/f;->a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/teak/sdk/b/f$1$2;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/b/f$1$2;-><init>(Lio/teak/sdk/b/f$1;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_4
    move-object v0, p1

    .line 130
    check-cast v0, Lio/teak/sdk/c/i;

    iget-object v0, v0, Lio/teak/sdk/c/i;->c:Ljava/util/Map;

    .line 131
    const-string v1, "errorCode"

    check-cast p1, Lio/teak/sdk/c/i;

    iget v2, p1, Lio/teak/sdk/c/i;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "purchase.failed"

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    iget-object v1, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v1}, Lio/teak/sdk/b/f;->a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/teak/sdk/b/f$1$3;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/b/f$1$3;-><init>(Lio/teak/sdk/b/f$1;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_5
    move-object v0, p1

    .line 148
    check-cast v0, Lio/teak/sdk/c/j;

    iget-object v0, v0, Lio/teak/sdk/c/j;->b:Landroid/content/Intent;

    .line 149
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 152
    if-eqz v7, :cond_1

    const-string v0, "teakNotifId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 156
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 159
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 161
    :try_start_0
    new-instance v5, Lio/teak/sdk/e/c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    :cond_2
    :goto_3
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    :cond_3
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "notification.received"

    invoke-virtual {v0, v2, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    const-string v0, "teakShowInForeground"

    invoke-static {v7, v0}, Lio/teak/sdk/c;->a(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    .line 172
    if-nez v0, :cond_1

    invoke-static {}, Lio/teak/sdk/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    new-instance v8, Lio/teak/sdk/TeakNotification;

    invoke-direct {v8, v7}, Lio/teak/sdk/TeakNotification;-><init>(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "platformId"

    iget v2, v8, Lio/teak/sdk/TeakNotification;->platformId:I

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    check-cast p1, Lio/teak/sdk/c/j;

    iget-object v9, p1, Lio/teak/sdk/c/j;->c:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lio/teak/sdk/b/f$1;->a:Lio/teak/sdk/b/f;

    invoke-static {v0}, Lio/teak/sdk/b/f;->a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v0, Lio/teak/sdk/m;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x2

    new-instance v6, Lio/teak/sdk/b/f$1$4;

    invoke-direct {v6, p0, v9, v7, v8}, Lio/teak/sdk/b/f$1$4;-><init>(Lio/teak/sdk/b/f$1;Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)V

    invoke-direct/range {v0 .. v6}, Lio/teak/sdk/m;-><init>(IJJLjava/util/concurrent/Callable;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :pswitch_6
    move-object v0, p1

    .line 226
    check-cast v0, Lio/teak/sdk/c/j;

    iget-object v0, v0, Lio/teak/sdk/c/j;->b:Landroid/content/Intent;

    .line 227
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 230
    if-eqz v6, :cond_1

    .line 232
    const-string v0, "noAutolaunch"

    invoke-static {v6, v0}, Lio/teak/sdk/c;->a(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 233
    :goto_4
    sget-object v7, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v8, "notification.opened"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "teakNotifId"

    aput-object v9, v5, v3

    const-string v3, "teakNotifId"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "autoLaunch"

    aput-object v2, v5, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    check-cast p1, Lio/teak/sdk/c/j;

    iget-object v1, p1, Lio/teak/sdk/c/j;->c:Landroid/content/Context;

    .line 237
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 244
    const-string v2, "teakDeepLink"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "teakDeepLink"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 246
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    move v0, v3

    .line 232
    goto :goto_4

    :catch_0
    move-exception v5

    goto/16 :goto_3

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d7a1e27 -> :sswitch_6
        -0x4ad938dc -> :sswitch_0
        -0x20b65a07 -> :sswitch_3
        -0x1c443c86 -> :sswitch_5
        -0x89510c7 -> :sswitch_1
        -0x1fe0384 -> :sswitch_4
        0x55c243ab -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

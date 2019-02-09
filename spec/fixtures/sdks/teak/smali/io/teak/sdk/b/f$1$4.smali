.class final Lio/teak/sdk/b/f$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/f$1;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Landroid/os/Bundle;

.field private synthetic c:Lio/teak/sdk/TeakNotification;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/f$1;Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)V
    .locals 0

    .prologue
    .line 182
    iput-object p2, p0, Lio/teak/sdk/b/f$1$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/teak/sdk/b/f$1$4;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lio/teak/sdk/b/f$1$4;->c:Lio/teak/sdk/TeakNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/k;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 186
    iget-object v0, p0, Lio/teak/sdk/b/f$1$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/teak/sdk/b/f$1$4;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lio/teak/sdk/b/f$1$4;->c:Lio/teak/sdk/TeakNotification;

    invoke-static {v0, v1, v2}, Lio/teak/sdk/a;->a(Landroid/content/Context;Landroid/os/Bundle;Lio/teak/sdk/TeakNotification;)Landroid/app/Notification;

    move-result-object v0

    .line 187
    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v8

    .line 190
    :cond_1
    iget-object v1, p0, Lio/teak/sdk/b/f$1$4;->a:Landroid/content/Context;

    invoke-static {v1}, Lio/teak/sdk/d/b;->a(Landroid/content/Context;)Lio/teak/sdk/d/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lio/teak/sdk/b/f$1$4;->b:Landroid/os/Bundle;

    const-string v2, "teakUserId"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lio/teak/sdk/b/f$1$4;->b:Landroid/os/Bundle;

    const-string v3, "teakAppId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 197
    const-string v4, "app_id"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v2, "user_id"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "platform_id"

    iget-object v2, p0, Lio/teak/sdk/b/f$1$4;->c:Lio/teak/sdk/TeakNotification;

    iget-wide v4, v2, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lio/teak/sdk/b/f$1$4;->c:Lio/teak/sdk/TeakNotification;

    iget-wide v4, v1, Lio/teak/sdk/TeakNotification;->teakNotifId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 201
    const-string v1, "impression"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    iget-object v1, p0, Lio/teak/sdk/b/f$1$4;->b:Landroid/os/Bundle;

    const-string v2, "teakUnitTest"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 207
    :try_start_0
    invoke-static {}, Lio/teak/sdk/l;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    new-instance v1, Lio/teak/sdk/a/a;

    iget-object v2, p0, Lio/teak/sdk/b/f$1$4;->a:Landroid/content/Context;

    new-instance v4, Lio/teak/sdk/d/c;

    iget-object v5, p0, Lio/teak/sdk/b/f$1$4;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lio/teak/sdk/d/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v4}, Lio/teak/sdk/a/a;-><init>(Landroid/content/Context;Lio/teak/sdk/d/f;)V

    .line 209
    iget-object v1, v1, Lio/teak/sdk/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lio/teak/sdk/l;->a(Ljava/lang/String;)V

    .line 211
    :cond_3
    const-string v1, "parsnip.gocarrot.com"

    const-string v2, "/notification_received"

    sget-object v4, Lio/teak/sdk/b/e;->a:Lio/teak/sdk/b/e;

    invoke-static {v1, v2, v3, v4}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;)V
    :try_end_0
    .catch Lio/teak/sdk/e$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_4
    :goto_1
    new-instance v1, Lio/teak/sdk/c/f;

    iget-object v2, p0, Lio/teak/sdk/b/f$1$4;->c:Lio/teak/sdk/TeakNotification;

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/f;-><init>(Lio/teak/sdk/TeakNotification;Landroid/app/Notification;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

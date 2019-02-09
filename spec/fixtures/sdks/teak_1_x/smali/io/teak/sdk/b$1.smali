.class final Lio/teak/sdk/b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/b;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->a(Lio/teak/sdk/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->a(Lio/teak/sdk/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v0}, Lio/teak/sdk/b;->b(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->c(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lio/teak/sdk/c/d;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 65
    :cond_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->d(Lio/teak/sdk/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->d(Lio/teak/sdk/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 55
    :try_start_1
    iget-object v2, p0, Lio/teak/sdk/b$1;->a:Lio/teak/sdk/b;

    invoke-static {v2}, Lio/teak/sdk/b;->e(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

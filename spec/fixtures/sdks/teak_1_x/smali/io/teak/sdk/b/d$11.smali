.class final Lio/teak/sdk/b/d$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 3
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 534
    iget-object v1, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_1
    return-void

    .line 534
    :sswitch_0
    const-string v2, "UserIdEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "LifecycleEvent.Paused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "LifecycleEvent.Resumed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 536
    :pswitch_0
    check-cast p1, Lio/teak/sdk/c/o;

    iget-object v0, p1, Lio/teak/sdk/c/o;->b:Ljava/lang/String;

    .line 537
    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :pswitch_1
    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 543
    :try_start_0
    invoke-static {}, Lio/teak/sdk/b/d;->e()Lio/teak/sdk/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 544
    invoke-static {}, Lio/teak/sdk/b/d;->e()Lio/teak/sdk/b/d;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0

    .line 551
    :pswitch_2
    check-cast p1, Lio/teak/sdk/c/e;

    iget-object v0, p1, Lio/teak/sdk/c/e;->b:Landroid/content/Intent;

    .line 552
    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d7e082c -> :sswitch_0
        -0x89510c7 -> :sswitch_2
        0x1d20338c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

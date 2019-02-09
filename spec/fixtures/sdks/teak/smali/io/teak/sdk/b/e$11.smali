.class final Lio/teak/sdk/b/e$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 3
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 546
    iget-object v1, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_1
    return-void

    .line 546
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

    :pswitch_0
    move-object v0, p1

    .line 548
    check-cast v0, Lio/teak/sdk/c/o;

    iget-object v0, v0, Lio/teak/sdk/c/o;->b:Ljava/lang/String;

    .line 549
    check-cast p1, Lio/teak/sdk/c/o;

    iget-object v1, p1, Lio/teak/sdk/c/o;->c:Ljava/util/Set;

    .line 550
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v2

    .line 554
    if-eqz v2, :cond_1

    .line 555
    iget-object v2, v2, Lio/teak/sdk/n;->e:Lio/teak/sdk/a/b;

    invoke-virtual {v2, v1}, Lio/teak/sdk/a/b;->a(Ljava/util/Set;)V

    .line 559
    :cond_1
    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 563
    :pswitch_1
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 565
    :try_start_0
    invoke-static {}, Lio/teak/sdk/b/e;->e()Lio/teak/sdk/b/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 566
    invoke-static {}, Lio/teak/sdk/b/e;->e()Lio/teak/sdk/b/e;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_2
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 570
    throw v0

    .line 573
    :pswitch_2
    check-cast p1, Lio/teak/sdk/c/e;

    iget-object v0, p1, Lio/teak/sdk/c/e;->b:Landroid/content/Intent;

    .line 574
    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 546
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

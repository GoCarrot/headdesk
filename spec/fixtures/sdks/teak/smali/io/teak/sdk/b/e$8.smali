.class final Lio/teak/sdk/b/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 7
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 473
    iget-object v4, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 489
    :cond_1
    :goto_1
    return-void

    .line 473
    :sswitch_0
    const-string v5, "FacebookAccessTokenEvent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "AdvertisingInfoEvent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "PushRegistrationEvent.Registered"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 475
    :pswitch_0
    check-cast p1, Lio/teak/sdk/c/d;

    iget-object v0, p1, Lio/teak/sdk/c/d;->b:Ljava/lang/String;

    .line 476
    if-eqz v0, :cond_1

    iget-object v4, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v4}, Lio/teak/sdk/b/e;->f(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    iget-object v4, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v4, v0}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "session.fb_access_token"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "access_token"

    aput-object v6, v5, v1

    iget-object v1, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v1}, Lio/teak/sdk/b/e;->f(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "session_id"

    aput-object v1, v5, v3

    const/4 v1, 0x3

    iget-object v2, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v2}, Lio/teak/sdk/b/e;->h(Lio/teak/sdk/b/e;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 479
    iget-object v0, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->i(Lio/teak/sdk/b/e;)V

    goto :goto_1

    .line 483
    :pswitch_1
    iget-object v0, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->i(Lio/teak/sdk/b/e;)V

    goto :goto_1

    .line 486
    :pswitch_2
    iget-object v0, p0, Lio/teak/sdk/b/e$8;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->i(Lio/teak/sdk/b/e;)V

    goto :goto_1

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cc6e018 -> :sswitch_1
        -0x4bf90657 -> :sswitch_2
        0x19b1f7ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

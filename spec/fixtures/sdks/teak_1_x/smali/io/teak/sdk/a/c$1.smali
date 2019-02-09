.class final Lio/teak/sdk/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/c;-><init>(Landroid/content/Context;Lio/teak/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/c;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/c;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lio/teak/sdk/a/c$1;->a:Lio/teak/sdk/a/c;

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
    .line 88
    iget-object v1, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_1
    return-void

    .line 88
    :sswitch_0
    const-string v2, "AdvertisingInfoEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "PushRegistrationEvent.Registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_0
    iget-object v1, p0, Lio/teak/sdk/a/c$1;->a:Lio/teak/sdk/a/c;

    move-object v0, p1

    check-cast v0, Lio/teak/sdk/c/a;

    iget-object v0, v0, Lio/teak/sdk/c/a;->b:Ljava/lang/String;

    iput-object v0, v1, Lio/teak/sdk/a/c;->h:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lio/teak/sdk/a/c$1;->a:Lio/teak/sdk/a/c;

    check-cast p1, Lio/teak/sdk/c/a;

    iget-boolean v1, p1, Lio/teak/sdk/c/a;->c:Z

    iput-boolean v1, v0, Lio/teak/sdk/a/c;->i:Z

    goto :goto_1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lio/teak/sdk/a/c$1;->a:Lio/teak/sdk/a/c;

    check-cast p1, Lio/teak/sdk/c/k;

    iget-object v1, p1, Lio/teak/sdk/c/k;->b:Ljava/util/Map;

    iput-object v1, v0, Lio/teak/sdk/a/c;->a:Ljava/util/Map;

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cc6e018 -> :sswitch_0
        -0x4bf90657 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

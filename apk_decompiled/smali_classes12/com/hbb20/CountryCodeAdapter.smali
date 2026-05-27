.class Lcom/hbb20/CountryCodeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CountryCodeAdapter.java"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;"
    }
.end annotation


# instance fields
.field codePicker:Lcom/hbb20/CountryCodePicker;

.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field editText_search:Landroid/widget/EditText;

.field filteredCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field imgClearQuery:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field masterCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation
.end field

.field preferredCountriesCount:I

.field rlQueryHolder:Landroid/widget/RelativeLayout;

.field textView_noResult:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "codePicker"    # Lcom/hbb20/CountryCodePicker;
    .param p4, "rlQueryHolder"    # Landroid/widget/RelativeLayout;
    .param p5, "editText_search"    # Landroid/widget/EditText;
    .param p6, "textView_noResult"    # Landroid/widget/TextView;
    .param p7, "dialog"    # Landroid/app/Dialog;
    .param p8, "imgClearQuery"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;",
            "Lcom/hbb20/CountryCodePicker;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/EditText;",
            "Landroid/widget/TextView;",
            "Landroid/app/Dialog;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 40
    .local p2, "countries":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 41
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    .line 44
    iput-object p7, p0, Lcom/hbb20/CountryCodeAdapter;->dialog:Landroid/app/Dialog;

    .line 45
    iput-object p6, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    .line 47
    iput-object p4, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p8, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 50
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setSearchBar()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/hbb20/CountryCodeAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hbb20/CountryCodeAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->applyQuery(Ljava/lang/String;)V

    return-void
.end method

.method private applyQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodeAdapter;->getFilteredCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->textView_noResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/hbb20/CountryCodeAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method

.method private getFilteredCountries(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/CCPCountry;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "tempCCPCountryList":Ljava/util/List;, "Ljava/util/List<Lcom/hbb20/CCPCountry;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 142
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->preferredCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 144
    .local v2, "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget v3, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 148
    .end local v2    # "CCPCountry":Lcom/hbb20/CCPCountry;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "divider":Lcom/hbb20/CCPCountry;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    .line 157
    .end local v1    # "divider":Lcom/hbb20/CCPCountry;
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodeAdapter;->masterCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/CCPCountry;

    .line 158
    .restart local v2    # "CCPCountry":Lcom/hbb20/CCPCountry;
    invoke-virtual {v2, p1}, Lcom/hbb20/CCPCountry;->isEligibleForQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "CCPCountry":Lcom/hbb20/CCPCountry;
    :cond_3
    goto :goto_1

    .line 162
    :cond_4
    return-object v0
.end method

.method private setQueryClearListener()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$1;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$1;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method private setSearchBar()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->codePicker:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->isSearchAllowed()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V

    .line 58
    invoke-direct {p0}, Lcom/hbb20/CountryCodeAdapter;->setQueryClearListener()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->rlQueryHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    :goto_0
    return-void
.end method

.method private setTextWatcher()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lcom/hbb20/CountryCodeAdapter$2;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$2;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->editText_search:Landroid/widget/EditText;

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$3;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodeAdapter$3;-><init>(Lcom/hbb20/CountryCodeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .line 202
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    .line 203
    .local v0, "ccpCountry":Lcom/hbb20/CCPCountry;
    iget v1, p0, Lcom/hbb20/CountryCodeAdapter;->preferredCountriesCount:I

    if-le v1, p1, :cond_0

    .line 204
    const-string v1, "\u2605"

    return-object v1

    .line 205
    :cond_0
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/hbb20/CCPCountry;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_1
    const-string v1, "\u263a"

    return-object v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;I)V
    .locals 2
    .param p1, "countryCodeViewHolder"    # Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    .param p2, "i"    # I

    .line 174
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/CCPCountry;

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->setCountry(Lcom/hbb20/CCPCountry;)V

    .line 175
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->filteredCountries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/hbb20/CountryCodeAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/hbb20/CountryCodeAdapter$4;-><init>(Lcom/hbb20/CountryCodeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;->getMainView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 167
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/hbb20/R$layout;->layout_recycler_country_tile:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;-><init>(Lcom/hbb20/CountryCodeAdapter;Landroid/view/View;)V

    .line 169
    .local v1, "viewHolder":Lcom/hbb20/CountryCodeAdapter$CountryCodeViewHolder;
    return-object v1
.end method

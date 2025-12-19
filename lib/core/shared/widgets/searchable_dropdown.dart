import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';

class SearchableDropdown<T> extends StatefulWidget {
  final String label;
  final T? value;
  final List<T> items;
  final String Function(T) itemLabelBuilder;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;
  final bool enabled;

  const SearchableDropdown({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.itemLabelBuilder,
    this.value,
    this.validator,
    this.enabled = true,
  });

  @override
  State<SearchableDropdown<T>> createState() => _SearchableDropdownState<T>();
}

class _SearchableDropdownState<T> extends State<SearchableDropdown<T>> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      _controller.text = widget.itemLabelBuilder(widget.value!);
    }
  }

  @override
  void didUpdateWidget(SearchableDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          if (widget.value != null) {
            _controller.text = widget.itemLabelBuilder(widget.value!);
          } else {
            _controller.clear();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.enabled
          ? () async {
              final result = await showDialog<T>(
                context: context,
                builder: (context) => _SearchDialog<T>(
                  items: widget.items,
                  itemLabelBuilder: widget.itemLabelBuilder,
                  title: widget.label,
                ),
              );
              if (result != null) {
                widget.onChanged(result);
              }
            }
          : null,
      child: IgnorePointer(
        child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: widget.label,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h), // Minimal height
            filled: !widget.enabled,
          ),
          validator: (val) => widget.validator?.call(widget.value),
        ),
      ),
    );
  }
}

class _SearchDialog<T> extends StatefulWidget {
  final List<T> items;
  final String Function(T) itemLabelBuilder;
  final String title;

  const _SearchDialog({
    required this.items,
    required this.itemLabelBuilder,
    required this.title,
  });

  @override
  State<_SearchDialog<T>> createState() => _SearchDialogState<T>();
}

class _SearchDialogState<T> extends State<_SearchDialog<T>> {
  late List<T> _filteredItems;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filter(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = widget.items;
      } else {
        _filteredItems = widget.items
            .where((item) => widget.itemLabelBuilder(item)
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      insetPadding: EdgeInsets.all(24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Text(
              "Select ${widget.title}",
              style: AppTextStyles.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              ),
              onChanged: _filter,
            ),
          ),
          SizedBox(height: 8.h),
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxHeight: 400.h),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                itemCount: _filteredItems.length,
                separatorBuilder: (ctx, i) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final item = _filteredItems[index];
                  return InkWell(
                    onTap: () => Navigator.pop(context, item),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 16.h,
                      ),
                      child: Text(
                        widget.itemLabelBuilder(item),
                        style: AppTextStyles.bodyLarge,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
